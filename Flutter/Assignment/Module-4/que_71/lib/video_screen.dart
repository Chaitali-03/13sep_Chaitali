import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.videocam),
            title: Text('Video $index'),
            subtitle: Text('This is the detail of video $index'),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
          height: 2,
          thickness: 2,
        ),
      ),
    );
  }
}
