import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CommunicationScreen extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _smsController = TextEditingController();

  void _makePhoneCall(String phoneNumber) async {
    var url = Uri.parse("tel:$phoneNumber");
    if (await canLaunchUrl(url))
    {
      await launchUrl(url);
    }
    else
    {
      throw 'Could not launch $url';
    }
  }

  void _sendSMS(String phoneNumber, String message) async {
    var url = Uri.parse("sms:$phoneNumber?body=$message");
    if (await canLaunchUrl(url))
    {
      await launchUrl(url);
    }
    else
    {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Communication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Enter phone number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _makePhoneCall(_phoneController.text),
              child: Text('Make Phone Call'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _smsController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'Enter SMS message'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _sendSMS(_phoneController.text, _smsController.text),
              child: Text('Send SMS'),
            ),
          ],
        ),
      ),
    );
  }
}
