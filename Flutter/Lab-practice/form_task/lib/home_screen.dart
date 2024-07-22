import 'package:flutter/material.dart';
import 'add_data_screen.dart';
import 'update_data_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> data = [];

  void addData(String name, String surname, String course) {
    setState(() {
      data.add({'name': name, 'surname': surname, 'course': course});
    });
  }

  void updateData(int index, String name, String surname, String course) {
    setState(() {
      data[index] = {'name': name, 'surname': surname, 'course': course};
    });
  }

  void deleteData(int index) {
    setState(() {
      data.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Simple CRUD App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddDataScreen(addData: addData),
                  ),
                );
              },
              child: Text('Add Data'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('name: ${data[index]['name']}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Surname: ${data[index]['surname']}'),
                        Text('Course: ${data[index]['course']}'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UpdateDataScreen(
                                  index: index,
                                  name: data[index]['name']!,
                                  surname: data[index]['surname']!,
                                  course: data[index]['course']!,
                                  updateData: updateData,
                                ),
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            deleteData(index);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
