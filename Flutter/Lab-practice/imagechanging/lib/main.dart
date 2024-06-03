import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:image(),debugShowCheckedModeBanner: false,));
}
class image extends StatefulWidget {
  const image({super.key});

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  String _Image = "assets/images/02.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IMAGE:"),backgroundColor: Colors.teal,),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(_Image,height: 300,width: 250),
            ElevatedButton(onPressed:() {
              _changeImage();
            },child: Text("Click to chnage image"),)
          ],
        ),
      ),
    );
  }
  void _changeImage() {
  setState((){
  _Image = (_Image == "assets/images/02.jpg") ? "assets/images/03.jpg" : "assets/images/02.jpg";
  });
  }
}


