import 'package:flutter/material.dart';

class PermissionDialog extends StatelessWidget {
  final VoidCallback onAllow;
  final VoidCallback onDeny;

  PermissionDialog({required this.onAllow, required this.onDeny});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Permission Required'),
      content: Text('This app needs phone call permissions to proceed.'),
      actions: [
        ElevatedButton(
          onPressed: onDeny,
          child: Text('Deny'),
        ),
        ElevatedButton(
          onPressed: onAllow,
          child: Text('Allow'),
        ),
      ],
    );
  }
}
