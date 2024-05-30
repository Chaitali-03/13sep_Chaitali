import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Image.network(
              'https://placehold.jp/3d4070/ffffff/150x150.png?css=%7B%22border-radius%22%3A%2215px%22%7D',
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
