import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:Practice(),debugShowCheckedModeBanner: false,));
}
class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  bool Dance=false;
  bool Music=false;
  bool Read=false;

  String gender=" ";
  Widget build(BuildContext context) {
    {

      return Scaffold(appBar: AppBar(title: Text("Login Form"),),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(decoration: InputDecoration(label: Text("Enter Your Firstname")),),
              SizedBox(height: 30),

              TextField(decoration: InputDecoration(label: Text("Enter Your Lastname")),),
              SizedBox(height: 30),

              TextField(decoration: InputDecoration(label: Text("Enter Your Email")),),
              SizedBox(height: 30),

              Text("Select Hobbies"),

              CheckboxListTile(
                  title: Text("Dancing"),
                  value: Dance, onChanged: (value){
                setState((){
                  Dance=value!;
                });
              }),
              CheckboxListTile(
                  title: Text("Listening Music"),
                  value: Music, onChanged: (value){
                setState((){
                  Music=value!;
                });
              }),
              CheckboxListTile(
                  title: Text("Reading"),
                  value: Read, onChanged: (value){
                setState((){
                  Read=value!;
                });
              }),
              SizedBox(height: 30),

              Text("Select Gender"),

              ListTile(
                title: const Text('Male'),
                leading: Radio(
                  value: 'Male',
                  groupValue: gender,
                  onChanged: (value)
                  {
                    setState(()
                    {
                      gender = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Female'),
                leading: Radio(
                  value: 'Female',
                  groupValue: gender,
                  onChanged: (value)
                  {
                    setState(()
                    {
                      gender = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Other'),
                leading: Radio(
                  value: 'Other',
                  groupValue: gender,
                  onChanged: (value)
                  {
                    setState(()
                    {
                      gender = value!;
                    });
                  },
                ),
              ),
              SizedBox(height: 30),

              TextField(decoration: InputDecoration(label: Text("Enter Your Password")),),
              SizedBox(height: 30),

              TextField(decoration: InputDecoration(label: Text("Enter Your ConfirmPasswor")),),


            ],
          ),
        ),
      );
    }
  }
}
