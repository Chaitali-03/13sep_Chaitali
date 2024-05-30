//69. Create an application like gmail and display Screens according to user selection and design each page with dummy data.

import 'package:flutter/material.dart';
import 'inbox_screen.dart';
import 'sent_screen.dart';
import 'drafts_screen.dart';
import 'settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gmail Clone',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Gmail Clone'),
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
              leading: Icon(Icons.inbox),
              title: Text('Inbox'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InboxScreen()),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              height: 2,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Sent'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SentScreen()),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              height: 2,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text('Drafts'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DraftsScreen()),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              height: 2,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Welcome to Gmail Clone! Select an option from the menu.',style: TextStyle(fontSize: 30),),
            ),
          ],
        ),
      ),
    );
  }
}
