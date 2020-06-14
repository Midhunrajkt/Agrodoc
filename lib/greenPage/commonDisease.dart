import 'package:flutter/material.dart';

class Page extends StatefulWidget {
  Page({this.plantName,this.scienticName,this.assestUrl});
  final String plantName;
  final String scienticName;
  final String assestUrl;

  //PlantScreen({this.plant});

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Container(alignment: Alignment.center,
        child: Text('Coming soon'),)
      )
    );
  }
}
