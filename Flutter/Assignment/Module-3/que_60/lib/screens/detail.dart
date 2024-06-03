import 'package:flutter/material.dart';
import 'package:que_60/constants/colors.dart';

class DetailPage extends StatefulWidget {

  final String image;
  final String diceName;
  const DetailPage({super.key,  required this.image,  required this.diceName});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Orange,
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                width: size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.arrow_back,size: 20,),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.favorite_border,size: 20,),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: size.width * 0.5,
                right: 0,
                left: 0,
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(size.width * 0.12),
                        topLeft: Radius.circular(size.width * 0.12),
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: size.width * 0.25,),
                      Text(widget.diceName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(children: [
                            Icon(Icons.watch_later_outlined,color: Colors.blue,size: 15 ,),
                            Text("50 min",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                          ],),
                          SizedBox(width: 30,),
                          Row(children: [
                            Icon(Icons.star,color: Colors.yellow,size: 15 ,),
                            Text("4.8",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                          ],),
                          SizedBox(width: 30,),
                          Row(children: [
                            Icon(Icons.local_fire_department,color: Colors.red,size: 15 ,),
                            Text("325 Kcal",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                          ],)
                        ],),
                      SizedBox(height: 20,),
                  Container(
                      width: double.maxFinite,
                      height: 40,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment(-0.3, 0),
                            child: Container(
                              height: double.maxFinite,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  '\$',
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '12',
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ]),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.1, 0),
                            child: Container(
                              height: double.maxFinite,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Orange,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '-',
                                    style:
                                    TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle, color: Colors.white),
                                    child: Text(
                                      '1'
                                    ),
                                  ),
                                  Text(
                                    '+',
                                    style:
                                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                      SizedBox(height: 20,),
                      Container(
                        width: size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ingredients",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15,),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/ingre1.png"),fit: BoxFit.cover,),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      Text("Noodle",style: TextStyle(fontSize: 12,),),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  width: 60,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15,),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/ingre2.png"),fit: BoxFit.cover,),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      Text("shrimp",style: TextStyle(fontSize: 12,),),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  width: 60,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15,),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/ingre3.png"),fit: BoxFit.cover,),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      Text("Egg",style: TextStyle(fontSize: 12,),),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  width: 60,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15,),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/ingre4.png"),fit: BoxFit.cover,),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      Text("Scallion",style: TextStyle(fontSize: 12,),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30,),
                            Text("About",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
                            SizedBox(height: 20,),
                            Text(' A vibrant Thai sausage made with ground chicken,'
                                ' plus its spicy chile dip,'
                                ' from Chef Parnass Savang of Atlanta\'s Talat Market.',
                              maxLines: 5,style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                top: size.width * 0.25,
                child: Container(
                  width: size.width * 0.45,
                  height: size.width * 0.45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(-2, 2)
                        ),
                        BoxShadow(
                            color: Colors.white12,
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(2, -2)
                        ),
                      ],
                      image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover,)
                  ),
                ),
              ),
            ],
          ),
        ),


        floatingActionButton: Container(
            width: 100,
            height: 56,
            child: RawMaterialButton(
              onPressed: () {},
              fillColor: Orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              elevation: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ))
    );
  }
}
