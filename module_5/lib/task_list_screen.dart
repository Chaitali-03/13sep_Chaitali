import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'database_helper.dart';
import 'model.dart';
import 'task_form_screen.dart';

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];
  final dbHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    _refreshTaskList();
  }

  _refreshTaskList() async {
    List<Task> x = await dbHelper.getTasks();
    setState(() {
      tasks = x;
    });
  }

  _deleteTask(int id) async {
    await dbHelper.deleteTask(id);
    _refreshTaskList();
  }

  Color _getPriorityColor(int priority) {
    switch (priority) {
      case 0:
        return Colors.green;
      case 1:
        return Colors.blue;
      case 2:
        return Colors.red;
      default:
        return Colors.black;
    }
  }

  String _getPriorityText(int priority) {
    switch (priority) {
      case 0:
        return 'Low';
      case 1:
        return 'Average';
      case 2:
        return 'High';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemPurple,
        title: Text('Task Manager'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: TaskSearchDelegate(tasks));
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          Task task = tasks[index];
          return Card(
            color: task.isCompleted ? Colors.grey : Colors.white,
            child: ListTile(
              title: Row(
                children: [
                  Text('Name: '),
                  Text(
                    task.name,
                    style: TextStyle(
                      decoration: task.isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description: ${task.description}'),
                  Text('Date: ${task.date}'),
                  Text('Time: ${task.time}'),
                  Text('Priority: ${_getPriorityText(task.priority)}', style: TextStyle(color: _getPriorityColor(task.priority))),
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
                          builder: (context) => TaskFormScreen(
                            onSave: (updatedTask) {
                              dbHelper.updateTask(updatedTask);
                              _refreshTaskList();
                            },
                            task: task,
                          ),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Delete Task'),
                            content: Text('Are you sure you want to delete this task?'),
                            actions: [
                              TextButton(
                                child: Text('Cancel'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: Text('Delete'),
                                onPressed: () {
                                  _deleteTask(task.id!);
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Complete the Task'),
                      content: Text('Mark this task as completed?'),
                      actions: [
                        TextButton(
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text('Complete'),
                          onPressed: () {
                            setState(() {
                              task.isCompleted = true;
                            });
                            dbHelper.updateTask(task);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskFormScreen(
                onSave: (task) {
                  dbHelper.insertTask(task);
                  _refreshTaskList();
                },
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class TaskSearchDelegate extends SearchDelegate {
  final List<Task> tasks;

  TaskSearchDelegate(this.tasks);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = tasks.where((task) => task.name.contains(query)).toList();
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index].name),
          subtitle: Text(results[index].description),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = tasks.where((task) => task.name.contains(query)).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index].name),
          subtitle: Text(suggestions[index].description),
        );
      },
    );
  }
}
