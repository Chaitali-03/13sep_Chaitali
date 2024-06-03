import 'package:database/viewdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: database()));
}

class database extends StatefulWidget {
  const database({super.key});

  @override
  State<database> createState() => _databaseState();
}

class _databaseState extends State<database> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Add Data"), backgroundColor: Colors.cyanAccent),
          body: Center(
            child: Column(
              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: "NAME:",
                    hintText: "Enter your name"
                  ),
                ),
                TextField(
                  controller: surname,
                  decoration: InputDecoration(
                      labelText: "SURNAME:",
                      hintText: "Enter your surname"
                  ),
                ),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      labelText: "EMAIL:",
                      hintText: "Enter your email"
                  ),
                ),
                ElevatedButton(onPressed: ()
                {
                  print("clicked");
                  print("Name: ${name.text}");
                  print("Surname: ${surname.text}");
                  print("Email: ${email.text}");
                  
                  Navigator.push(context,MaterialPageRoute(builder: (context) => viewdata()));
                }, child: Text("Add data"))
              ],
            ),
          ),
    );
  }
}
