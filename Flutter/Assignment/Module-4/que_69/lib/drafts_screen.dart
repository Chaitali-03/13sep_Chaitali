import 'package:flutter/material.dart';

class DraftsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Drafts'),
      ),
      body: ListView(
        children: List.generate(10, (index) {
          return ListTile(
            leading: Icon(Icons.drafts),
            title: Text('Draft Email $index'),
            subtitle: Text('This is the detail of draft email $index'),
          );
        }),
      ),
    );
  }
}
