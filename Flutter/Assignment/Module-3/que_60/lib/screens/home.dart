import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:que_60/constants/colors.dart';

import 'detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String>  items = ["Recommend","Popular","Noodles","Pizza"];
  List<String>  foodList = ["Soba Soup","Sai Ua Samun Phrai","Ratatouille"];
  List<String>  foodImagesList = ["assets/images/dish1.png","assets/images/dish2.png","assets/images/dish3.png"];
  List<String>  foodPriceList = ["\$12","\$12","\$12"];
  List<String>  foodDescription = ["No.1 in Sale","No.1 in Sale","No.1 in Sale"];

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: White,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.only(right: 10))
        ],
        backgroundColor: White,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Restaurant',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  "20-30min",
                                  style: TextStyle(color: Colors.white),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '2.4km',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Restaurant',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/res_logo.png',
                        width: 80,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Orange Sandwiches is delicious',
                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300)),
                    Row(
                      children: [
                        Icon(Icons.star_outline, color: Orange),
                        Text('${4.7}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )),
        Container(
          width: double.infinity,
          height: 50,
          child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx,index){
                return InkWell(
                  onTap: (){
                    selectedItem = index;
                    setState(() {});
                  },
                  child: selectedItem == index? Container(
                    width: 120,
                    height: 40,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Orange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(items[index],style: TextStyle(fontWeight: FontWeight.w800),),
                  ):Container(
                    width: 80,
                    height: 40,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(items[index],style: TextStyle(fontWeight: FontWeight.w800),),
                  ),
                );
              }),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
              itemCount: foodList.length,
              itemBuilder: (ctx,idx){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        DetailPage(image:foodImagesList[idx], diceName: foodList[idx] ,)));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage(foodImagesList[idx].toString()),fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(foodList[idx],style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text(foodDescription[idx],style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),),
                                SizedBox(height: 5,),
                                Text(foodPriceList[idx],style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(Icons.navigate_next,),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 2,
        backgroundColor: Orange,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
