import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard.dart';

void main()
{
  runApp(MaterialApp(home:MyApp(), debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    checkdata();
  }

  void checkdata() async
  {
    logindata = await SharedPreferences.getInstance();
    newuser = logindata.getBool('abc') ?? true;

    if(newuser==false)
      {
        Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=> DashboardPage()));
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Form",style: TextStyle(fontWeight: FontWeight.bold),),backgroundColor: Colors.black38,),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              TextFormField(controller: username, decoration: InputDecoration(hintText: "Enter Your Name",labelText: "Name"),),
              SizedBox(height: 10,),
              TextFormField(controller: password, obscureText: true, decoration: InputDecoration(hintText: "Enter Your Password",labelText: "Password"),),
              SizedBox(height: 60,),
              ElevatedButton(onPressed: (){
                String uname = username.text.toString();
                String pass = password.text.toString();

                if(uname!='' && pass!='')
                {
                  print("Login Done");
                  logindata.setBool('abc', false);
                  logindata.setString('username', uname);
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> DashboardPage()));
                }
                else{
                  print("Please fill both details");
                }
              }, child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}


