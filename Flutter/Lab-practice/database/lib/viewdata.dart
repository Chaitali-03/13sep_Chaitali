import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: viewdata()));
}
class viewdata extends StatefulWidget {
  const viewdata({super.key});

  @override
  State<viewdata> createState() => _viewdataState();
}

class _viewdataState extends State<viewdata> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
