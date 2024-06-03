import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
void main()
{
  runApp(MaterialApp
    (
      routes: {
        'loading': (_) => LoadingListPage(),
        //'word':(_) => classname();
      },
    home: MyApp(),debugShowCheckedModeBanner: false));
}

class LoadingListPage extends StatefulWidget {
  const LoadingListPage({super.key});

  @override
  State<LoadingListPage> createState() => _LoadingListPageState();
}

class _LoadingListPageState extends State<LoadingListPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkdata();
  }

  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List of data:")),
      body: Container
        (
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column
          (
            mainAxisSize: MainAxisSize.max,

            children: <Widget>[
              Expanded(
                child: Shimmer.fromColors(
                  baseColor: Colors.black26,
                  highlightColor: Colors.white,
                  enabled: _enabled,
                  child: ListView.builder(
                    itemBuilder: (_, __) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 48.0,
                            height: 48.0,
                            color: Colors.white,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  height: 8.0,
                                  color: Colors.white,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.0),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 8.0,
                                  color: Colors.white,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.0),
                                ),
                                Container(
                                  width: 40.0,
                                  height: 8.0,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    itemCount: 6,
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }

  void checkdata() async
  {
    var connectivityResult = await (Connectivity().checkConnectivity());
    setState(() {
      if (connectivityResult == ConnectivityResult.mobile)
      {
        print("You are connected to a mobile network. ");
        _enabled = false;
      } else if (connectivityResult == ConnectivityResult.wifi)
      {
        print("You are connected to a wifi network.");
        _enabled = false;
      } else
      {
        print("you are not connected in any network.");
        _enabled = true;
      }
    });
  }
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shimmer Effect"),),

      body: Column(

        children: [

          ListTile
            (
            title: Text('Loading List'),
            onTap: ()
            {
              Navigator.of(context).pushNamed('loading');
            },
          )
        ],
      ),
    );
  }
}
