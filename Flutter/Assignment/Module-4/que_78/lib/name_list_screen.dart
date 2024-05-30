import 'package:flutter/material.dart';

class NameListScreen extends StatefulWidget {
  @override
  _NameListScreenState createState() => _NameListScreenState();
}

class _NameListScreenState extends State<NameListScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _names = [];
  int? _editingIndex;

  void _addOrUpdateName() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        final newName = _controller.text;
        if (_editingIndex == null) {
          _names.add(newName);
        } else {
          _names[_editingIndex!] = newName;
          _editingIndex = null;
        }
        _controller.clear();
      }
    });
  }

  void _showDialog(String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Name"),
          content: Text(name),
          actions: <Widget>[
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDeleteDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Item"),
          content: Text("Are you sure want to delete item?"),
          actions: <Widget>[
            TextButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Yes"),
              onPressed: () {
                setState(() {
                  _names.removeAt(index);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showEditDialog(int index) {
    setState(() {
      _controller.text = _names[index];
      _editingIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Name List App"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter name',
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text("Add"),
                  onPressed: _addOrUpdateName,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _names.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _showDialog(_names[index]),
                  onLongPress: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.edit),
                              title: Text("Edit Item"),
                              onTap: () {
                                Navigator.pop(context);
                                _showEditDialog(index);
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.delete),
                              title: Text("Delete Item"),
                              onTap: () {
                                Navigator.pop(context);
                                _showDeleteDialog(index);
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.exit_to_app),
                              title: Text("Exit"),
                              onTap: () => Navigator.pop(context),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: ListTile(
                    title: Text(_names[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
