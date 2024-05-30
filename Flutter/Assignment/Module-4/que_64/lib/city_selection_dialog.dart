import 'package:flutter/material.dart';

class CitySelectionDialog extends StatefulWidget {
  final List<String> cities;

  CitySelectionDialog({required this.cities});

  @override
  _CitySelectionDialogState createState() => _CitySelectionDialogState();
}

class _CitySelectionDialogState extends State<CitySelectionDialog> {
  String? _selectedCity;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Select a City'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: widget.cities.map((city) {
            return RadioListTile<String>(
              title: Text(city),
              value: city,
              groupValue: _selectedCity,
              onChanged: (value) {
                setState(() {
                  _selectedCity = value;
                });
              },
            );
          }).toList(),
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(_selectedCity);
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
