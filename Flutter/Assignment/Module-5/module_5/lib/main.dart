// Offline Database – SQFLITE
// To create task management application for adding, updating, deleting
// the task and show the
// tasks in the listview or gridview. Task have name, description, date,
// time, priority. • To sort the task by the date and time wise. • If task is
// due then automatically show as blue color. • It will search the tasks
// by date wise. • If high priority then show as red color, average priority
// as blue color, low priority as green color. • Select specified item an
// open context menu to select “Complete the Task” then this task is
// modified as gray color and stripe line over the all the statements
// (showable labels). • Search task by name in the listview.
// Create an app for Manage Crud Operation using Sqflite.

import 'package:flutter/material.dart';
import 'task_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      home: TaskListScreen(),
    );
  }
}