import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: ImageLayout(),debugShowCheckedModeBanner: false,));
}
class ImageLayout extends StatefulWidget {
  const ImageLayout({super.key});

  @override
  State<ImageLayout> createState() => _ImageLayoutState();
}

class _ImageLayoutState extends State<ImageLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Layout Example',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/c++-logo.jpg',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/html-logo.jpg',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        'Programming',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'Language',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/images/js-logo.png',
                    width: 100,
                    height: 100,
                  ),
                ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/php-logo.png',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
