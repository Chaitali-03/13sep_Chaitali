import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen:2"),foregroundColor: Colors.white, backgroundColor: Colors.black),
      body: Column(
        children: [
          Image.asset("images/Oeschinen_Lake,_Kandersteg,_Switzerland_(Unsplash).jpg"),
          Container( padding: EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text('Oeschinen Lake Campground',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Text('Kandersteg, Switzerland',
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ),
                ),
                Column(children: [Icon(Icons.star, color: Colors.red[500])]),
                Column(children: [
                  Text('41', style: TextStyle(fontSize: 20.0),)
                ]),
              ],
            ),),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.call,color: Colors.blue,),
                    SizedBox(height: 10),
                    Text('CALL',style: TextStyle(color: Colors.blue),)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.near_me,color: Colors.blue,),
                    SizedBox(height: 10),
                    Text('ROUTE',style: TextStyle(color: Colors.blue),)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share,color: Colors.blue,),
                    SizedBox(height: 10),
                    Text('SHARE',style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps.'
              'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
              'A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest,'
              'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
              'Activities enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

