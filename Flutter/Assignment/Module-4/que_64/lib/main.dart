//64. Write a code to display alert dialog with list of cities and Single choice selection display selected city in TextView.
import 'package:flutter/material.dart';
import 'city_selection_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'City Selection Dialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedCity = 'No city selected';

  void _showCitySelectionDialog() async {
    final selectedCity = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return CitySelectionDialog(
          cities: ['Rajkot', 'Ahmadabad', 'Surat', 'Vadodara', 'Junagadh'],
        );
      },
    );

    if (selectedCity != null) {
      setState(() {
        _selectedCity = selectedCity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City Selection Dialog'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected City:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              _selectedCity,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showCitySelectionDialog,
              child: Text('Select City'),
            ),
          ],
        ),
      ),
    );
  }
}

