import 'package:flutter/material.dart';

class DatePickerDialogWidget extends StatefulWidget {
  @override
  _DatePickerDialogWidgetState createState() => _DatePickerDialogWidgetState();
}

class _DatePickerDialogWidgetState extends State<DatePickerDialogWidget> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Select a Date'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            onPressed: () async {
              DateTime? picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2050),
              );
              if (picked != null && picked != _selectedDate) {
                setState(() {
                  _selectedDate = picked;
                });
              }
            },
            child: Text('Pick a date'),
          ),
          if (_selectedDate != null)
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "Selected",
                style: TextStyle(fontSize: 16),
              ),
            ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(_selectedDate);
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
