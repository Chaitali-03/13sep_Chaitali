import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onPositivePressed;
  final VoidCallback onNegativePressed;
  final VoidCallback onNeutralPressed;

  const CustomAlertDialog({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.onPositivePressed,
    required this.onNegativePressed,
    required this.onNeutralPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(icon),
          SizedBox(width: 8),
          Text(title),
        ],
      ),
      content: Text(description),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onNeutralPressed();
          },
          child: Text('Neutral'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onNegativePressed();
          },
          child: Text('Negative'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onPositivePressed();
          },
          child: Text('Positive'),
        ),
      ],
    );
  }
}
