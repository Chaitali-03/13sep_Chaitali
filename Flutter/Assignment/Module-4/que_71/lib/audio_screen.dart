import 'package:flutter/material.dart';

class AudioScreen extends StatelessWidget {
  const AudioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
          height: 2,
          thickness: 2,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text('Audio Track $index'),
            subtitle: Text('This is the detail of audio track $index'),
          );
        },
      ),
    );
  }
}
