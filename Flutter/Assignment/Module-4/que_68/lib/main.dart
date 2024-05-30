//68. Write a code to display edit, view, delete options with context menu in listview and also perform respective operation on user's choice.

import 'package:flutter/material.dart';
import 'item_screen.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _items = List<String>.generate(10, (index) => 'Item ${index + 1}');

  void _editItem(BuildContext context, int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ItemScreen(
          item: _items[index],
          onSave: (String newItem) {
            setState(() {
              _items[index] = newItem;
            });
          },
        ),
      ),
    );
  }

  void _viewItem(BuildContext context, String item) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('View Item'),
          content: Text(item),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _deleteItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Edit, View, Delete Opration with context menu'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.circle),
            title: Text(_items[index]),
            subtitle: Text("This is best item"),
            trailing: PopupMenuButton<String>(
              onSelected: (String value) {
                if (value == 'Edit') {
                  _editItem(context, index);
                } else if (value == 'View') {
                  _viewItem(context, _items[index]);
                } else if (value == 'Delete') {
                  _deleteItem(index);
                }
              },
              itemBuilder: (BuildContext context) {
                return {'Edit', 'View', 'Delete'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          );
        },
      ),
    );
  }
}

