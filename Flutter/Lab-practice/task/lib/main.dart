import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

enum ImageOption {image1,image2,image3,image4,image5}

class _MyAppState extends State<MyApp> {

   ImageOption _selectedImageOption  = ImageOption.image1;

   Map<ImageOption, String> _imagePaths = {
     ImageOption.image1: "image/01.webp",
     ImageOption.image2: "image/02.jpg",
     ImageOption.image3: "image/03.jpg",
     ImageOption.image4: "image/boy.png",
     ImageOption.image5: "image/girl.png",
   };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio Button"),),

      body:Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage(_imagePaths[_selectedImageOption]!),
                fit: BoxFit.cover,
              ),
              ),width: 400,height: 400,
            ),
          ),
      Card(
        color: Colors.transparent,
        child: Column(
          children: [
            ListTile(
              title: const Text('image1',style: TextStyle(color: Colors.white),),
              leading: Radio(
                value: ImageOption.image1,
                groupValue: _selectedImageOption ,
                onChanged: (ImageOption? value)
                {
                  setState(()
                  {
                    _selectedImageOption  = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: const Text('image2',style: TextStyle(color: Colors.white),),
              leading: Radio(
                value: ImageOption.image2,
                groupValue: _selectedImageOption ,
                onChanged: (ImageOption? value)
                {
                  setState(()
                  {
                    _selectedImageOption  = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('image3',style: TextStyle(color: Colors.white),),
              leading: Radio(
                value: ImageOption.image3,
                groupValue: _selectedImageOption ,
                onChanged: (ImageOption? value)
                {
                  setState(()
                  {
                    _selectedImageOption  = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('image4',style: TextStyle(color: Colors.white),),
              leading: Radio(
                value: ImageOption.image4,
                groupValue: _selectedImageOption ,
                onChanged: (ImageOption? value)
                {
                  setState(() {
                    _selectedImageOption  = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('image5',style: TextStyle(color: Colors.white),),
              leading: Radio(
                value: ImageOption.image5,
                groupValue: _selectedImageOption ,
                onChanged: (ImageOption? value)
                {
                  setState(() {
                    _selectedImageOption  = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    ],
    ),
    );
  }
}
