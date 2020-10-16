import 'package:flutter/material.dart';
import 'package:flutter_douban/pages/mall/mall_content.dart';
class DBMallPage extends StatefulWidget {
  @override
  _DBMallPageState createState() => _DBMallPageState();
}

class _DBMallPageState extends State<DBMallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        centerTitle: true,
      ),
      body: DBMallContent(),
    );
  }
}
