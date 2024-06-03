import 'package:flutter/material.dart';

class Model extends StatelessWidget
{
  late List list;

  Model({required this.list});

  @override
  Widget build(BuildContext context)
  {

    return ListView.builder(
      itemBuilder: (context,i)
      {
        return ListTile
          (
          leading: Image.network(list[i]['imageurl'],width: 50,height: 200,),
          title: Text(list[i]['name']),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(list[i]['realname']),
              Text(list[i]['team']),
              Text(list[i]['firstappearance']),
              Text(list[i]['createdby']),
              Text(list[i]['publisher']),
              Text(list[i]['bio'])
            ],
          ),

        );
      },
      itemCount:list.length,);
  }
}


