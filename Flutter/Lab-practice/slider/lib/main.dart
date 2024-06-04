import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider/model.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> items =
      [
        "https://www.bigbasket.com/media/uploads/p/xxl/40181889_3-amul-milk-chocolate.jpg",
        "https://www.bigbasket.com/media/uploads/p/xxl/40181889_3-amul-milk-chocolate.jpg",
        "https://www.bigbasket.com/media/uploads/p/xxl/40181889_3-amul-milk-chocolate.jpg",
        "https://www.bigbasket.com/media/uploads/p/xxl/40181889_3-amul-milk-chocolate.jpg"
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.filter_alt)),
          IconButton(onPressed: (){},
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView(
        children: [
          CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://gumlet-images.assettype.com/afaqs%2F2020-12%2F440b9213-e959-4a87-ab0a-6638ebce3358%2F569.jpg?format=webp&w=480&dpr=2.6"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.moneycontrol.com/static-mcnews/2019/07/Amul-770x435.jpg?impolicy=website&width=770&height=431"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://amul.com/images/Amul_product_partner.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 150.00,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.easeInQuad,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
              )),
          SizedBox(height: 30),
          Container(
            height: 700,
            padding: EdgeInsets.all(10),
            child: GridView.builder(
              itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
              (
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (BuildContext context,int index)
            {
              return Image.network(items[index]);
            }
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Chaitali Jivani"),
              accountEmail: Text("chaitali@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "C",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("About"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
