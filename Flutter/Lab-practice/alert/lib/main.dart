import 'package:alert/select.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),debugShowCheckedModeBanner: false));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override

  State<MyApp> createState() => _MyAppState();
}

  enum ConfirmAction {Ok,Cancel}
class _MyAppState extends State<MyApp> {
  TextEditingController title = TextEditingController();

  @override
  String Type="";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Alert:"),backgroundColor: Colors.deepPurpleAccent,),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              showDialogbox(context);
            }, child:Text("Click Me"))
          ],
        ),
      ),
    );
  }
  showDialogbox(BuildContext context) {
    Widget Okbutton = ElevatedButton(onPressed: () {
      String t = title.text.toString();
      print("$t");
      Navigator.of(context).pop(ConfirmAction.Cancel);
    }, child: Text("Ok"));
    Widget Cancelbutton = ElevatedButton(onPressed: () {
      Navigator.of(context).pop(ConfirmAction.Cancel);
    }, child: Text("Cancel"));

    AlertDialog alert = AlertDialog(
      title: Text("Choose Type",style: TextStyle(fontWeight: FontWeight.bold),),
      content: TextField(controller:title,decoration: InputDecoration(label: Text("Enter Title"),),),


          Center(
            child: Column(
              children: [
                Text("Type:"),
              ],
            ),
          ),

              Row(
                children: [
                  ListTile(
                    title: Text("Credit"),
                    leading: Radio(
                      value: 'Credit',
                    groupValue: Type,
                  onChanged: (value)
                  {
                    setState(() {
                      Type=value!;
                    });
                  },),),
                ],
              ),

              ListTile(
               title: Text("Debit"),
               leading: Radio(
                value: 'Debit',
                groupValue: Type,
                onChanged: (value)
              {
                setState(() {
                  Type=value!;
                });
              },),),


        actions: [
        Okbutton,
        Cancelbutton
         ],);

    showDialog(context: context, builder: (BuildContext context)
    {
      return alert;
    });
  }
}


