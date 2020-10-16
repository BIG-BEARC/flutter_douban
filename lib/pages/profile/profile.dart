import 'package:flutter/material.dart';
import 'package:flutter_douban/pages/profile/profile_content.dart';
class DBProfilePage extends StatefulWidget {
  @override
  _DBProfilePageState createState() => _DBProfilePageState();
}

class _DBProfilePageState extends State<DBProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        centerTitle: true,
      ),
      body: DBProfileContent(),
    );
  }
}
