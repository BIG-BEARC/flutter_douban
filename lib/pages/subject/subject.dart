import 'package:flutter/material.dart';
import 'package:flutter_douban/pages/subject/subject_content.dart';

class DBSubjectPage extends StatefulWidget {
  @override
  _DBSubjectPageState createState() => _DBSubjectPageState();
}

class _DBSubjectPageState extends State<DBSubjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('书影音'),
        centerTitle: true,
      ),
      body: DBSubjectContent(),
    );
  }
}
