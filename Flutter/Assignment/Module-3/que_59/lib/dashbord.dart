import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome:"),backgroundColor: Colors.purple,),
      body: Column(
        children: [
          Center(child: Text("welcome user",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),),
        ],
      ),
    );
  }
}
