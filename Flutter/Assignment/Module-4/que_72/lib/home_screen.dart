import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:que_72/permission_dialog.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _checkPermission();
  }

  Future<void> _checkPermission() async {
    PermissionStatus status = await Permission.phone.status;
    if (status != PermissionStatus.granted) {
      _showPermissionDialog();
    }
  }

  void _showPermissionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PermissionDialog(
          onAllow: () async {
            Navigator.of(context).pop();
            openAppSettings();
          },
          onDeny: () {
            Navigator.of(context).pop();
            _handlePermissionDenied();
          },
        );
      },
    );
  }

  void _handlePermissionDenied()
  {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Permission denied. You cannot make phone calls.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Phone Call App'),
      ),
      body: Center(
        child: Text('Welcome to the Phone Call App!'),
      ),
    );
  }
}
