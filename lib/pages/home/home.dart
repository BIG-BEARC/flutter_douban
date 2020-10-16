import 'package:flutter/material.dart';
import '../home/home_content.dart';

class DBHomePage extends StatefulWidget {


  @override
  _DBHomePageState createState() => _DBHomePageState();
}

class _DBHomePageState extends State<DBHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        centerTitle: true,
      ),
      body: DBHomeContent(),
    );
  }
}
