//78. Write a program to add name from the text view and insert into the
// listview. If you click on the listview then name should be show in the
// dialog box. When user press for 2 seconds on particular List item then
// open Context Menu (Delete Item, Edit Item, Exit). If user click on
// Delete Item then Open one Alert Dialog with message (“Are you sure
// want to delete Item?”) and yes, no button if user press yes button then
// remove item from list. (Click a DELETE button, it gives a confirm box)
// If user click on Edit item then selected item display on EditText and
// again user click on button then this (updated item) should be replace
// with old item.

import 'package:flutter/material.dart';
import 'name_list_screen.dart';

void main() {
  runApp(NameListApp());
}

class NameListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Name List App',
      home: NameListScreen(),
    );
  }
}
