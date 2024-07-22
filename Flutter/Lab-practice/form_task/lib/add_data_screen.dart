import 'package:flutter/material.dart';

class AddDataScreen extends StatelessWidget {
  final Function(String, String, String) addData;

  AddDataScreen({required this.addData});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController courseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: surnameController,
              decoration: InputDecoration(labelText: 'Surname'),
            ),
            TextField(
              controller: courseController,
              decoration: InputDecoration(labelText: 'Course'),
            ),
            ElevatedButton(
              onPressed: () {
                addData(
                  nameController.text,
                  surnameController.text,
                  courseController.text,
                );
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
