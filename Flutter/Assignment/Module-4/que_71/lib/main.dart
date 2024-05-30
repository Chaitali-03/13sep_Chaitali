//71. Create an application with Navigation Drawer with 3 tabs Gallery, audio and video and design each page with dummy data.
import 'package:flutter/material.dart';
import 'gallery_screen.dart';
import 'audio_screen.dart';
import 'video_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Media App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    GalleryScreen(),
    AudioScreen(),
    VideoScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Media App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('Gallery'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(0);
              },
            ),
            Divider(
              color: Colors.grey,
              height: 2,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.audiotrack),
              title: Text('Audio'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(1);
              },
            ),
            Divider(
              color: Colors.grey,
              height: 2,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(2);
              },
            ),
            Divider(
              color: Colors.grey,
              height: 2,
              thickness: 2,
            ),
          ],
        ),
      ),
      body: Center(
        child: _pages[_selectedIndex],
      ),
    );
  }
}



