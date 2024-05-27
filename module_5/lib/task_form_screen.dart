import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model.dart';

class TaskFormScreen extends StatefulWidget {
  final Function(Task) onSave;
  final Task? task;

  TaskFormScreen({required this.onSave, this.task});

  @override
  _TaskFormScreenState createState() => _TaskFormScreenState();
}

class _TaskFormScreenState extends State<TaskFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _description;
  late String _date;
  late String _time;
  late int _priority;

  @override
  void initState() {
    super.initState();
    _name = widget.task?.name ?? '';
    _description = widget.task?.description ?? '';
    _date = widget.task?.date ?? '';
    _time = widget.task?.time ?? '';
    _priority = widget.task?.priority ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemPurple,
        title: Text(widget.task == null ? 'Add Task' : 'Edit Task'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: _name,
                decoration: InputDecoration(labelText: 'Name'),
                onSaved: (val) => _name = val!,
                validator: (val) => val!.isEmpty ? 'Name is required' : null,
              ),
              TextFormField(
                initialValue: _description,
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (val) => _description = val!,
                validator: (val) =>
                val!.isEmpty ? 'Description is required' : null,
              ),
              TextFormField(
                initialValue: _date,
                decoration: InputDecoration(labelText: 'Date (YYYY-MM-DD)'),
                onSaved: (val) => _date = val!,
                validator: (val) => val!.isEmpty ? 'Date is required' : null,
              ),
              TextFormField(
                initialValue: _time,
                decoration: InputDecoration(labelText: 'Time (HH:MM)'),
                onSaved: (val) => _time = val!,
                validator: (val) => val!.isEmpty ? 'Time is required' : null,
              ),
              DropdownButtonFormField<int>(
                value: _priority,
                items: [
                  DropdownMenuItem(child: Text('Low'), value: 0),
                  DropdownMenuItem(child: Text('Average'), value: 1),
                  DropdownMenuItem(child: Text('High'), value: 2),
                ],
                onChanged: (val) => setState(() => _priority = val!),
                decoration: InputDecoration(labelText: 'Priority'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    widget.onSave(Task(
                      id: widget.task?.id,
                      name: _name,
                      description: _description,
                      date: _date,
                      time: _time,
                      priority: _priority,
                      isCompleted: widget.task?.isCompleted ?? false,
                    ));
                    Navigator.pop(context);
                  }
                },
                child: Text('Save Task'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
