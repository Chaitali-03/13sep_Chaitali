import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedprefrence/main.dart';

class DashboardPage extends StatefulWidget
{
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
{

  late SharedPreferences logindata;
  late String myusername;


  @override
  void initState()
  {
    // TODO: implement initState
    // super.initState();

    initial();

  }

  void initial() async
  {
    logindata = await SharedPreferences.getInstance();

    setState(() {


      myusername = logindata.getString('username')!;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Welcome $myusername", style: TextStyle(fontWeight: FontWeight.bold),),
      actions: [
        IconButton(onPressed: ()
        {
          logindata.setBool('abc', true);
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>MyApp()));
        }, icon: Icon(Icons.logout))
      ],actionsIconTheme: IconThemeData(),
      backgroundColor: Colors.black38,
    ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0,top: 100),
          child: Column(
            children: [
                 Padding(
                   padding: const EdgeInsets.all(50.0),
                   child: Container(width: 130,height: 45,color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("4 Language:" ,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),),
                    ),
                                   ),
                 ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Image.asset("images/c++-logo.jpg",height: 100,width: 100,),
                        Text("C++"),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Image.asset("images/html-logo.jpg",height: 100,width: 100),
                        Text("HTML")
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Image.asset("images/js-logo.png",height: 100,width: 100),
                        Text("JAVA")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Image.asset("images/php-logo.png",height: 100,width: 100),
                        Text("PHP")
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}
