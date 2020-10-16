import 'package:flutter/material.dart';
import 'package:flutter_douban/pages/group/group_content.dart';
class DBGroupPage extends StatefulWidget {
  @override
  _DBGroupPageState createState() => _DBGroupPageState();
}

class _DBGroupPageState extends State<DBGroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小组'),
        centerTitle: true,
      ),
      body: DBGroupContent(),
    );
  }
}
