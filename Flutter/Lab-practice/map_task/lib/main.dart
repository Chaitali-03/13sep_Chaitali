import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'mapscreen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController latitudeController = TextEditingController();
  TextEditingController longitudeController = TextEditingController();

  void _navigateToMapScreen() async {
    final double? lat = double.tryParse(latitudeController.text);
    final double? lng = double.tryParse(longitudeController.text);

    if (lat != null && lng != null) {
      final LatLng location = LatLng(lat, lng);

      // Fetch address details from API
      final response = await http.get(
        Uri.parse('https://nominatim.openstreetmap.org/reverse?format=json&lat=$lat&lon=$lng&zoom=18&addressdetails=1'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print(data); // Debugging: Print the data received from API
        final address = data['display_name'] ?? 'No address found';

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MapScreen(location: location, address: address),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to fetch address details')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter valid latitude and longitude')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map Example:"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                hintText: 'Latitude',
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              controller: latitudeController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Latitude';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                hintText: 'Longitude',
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              controller: longitudeController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Longitude';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(foregroundColor: Colors.blue, backgroundColor: Colors.white),
              onPressed: _navigateToMapScreen,
              child: Text('Show Map'),
            ),
          ],
        ),
      ),
    );
  }
}
