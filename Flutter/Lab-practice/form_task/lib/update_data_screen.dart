import 'package:flutter/material.dart';

class UpdateDataScreen extends StatelessWidget {
  final int index;
  final String name;
  final String surname;
  final String course;
  final Function(int, String, String, String) updateData;

  UpdateDataScreen({
    required this.index,
    required this.name,
    required this.surname,
    required this.course,
    required this.updateData,
  });

  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController courseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = name;
    surnameController.text = surname;
    courseController.text = course;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Update Data'),
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
                updateData(
                  index,
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
