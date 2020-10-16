import 'package:flutter/material.dart';
import 'package:flutter_douban/core/statistics_report_events.dart';
import 'package:flutter_douban/pages/main/initialize_third_party.dart';

import 'pages/main/initialize_items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.transparent,
        primaryColor: Colors.green,
        highlightColor: Colors.transparent
      ),
      title: '豆瓣 Flutter',
      home: DBHomeMainPage(),
    );
  }
}

class DBHomeMainPage extends StatefulWidget {
  @override
  _DBHomeMainPageState createState() => _DBHomeMainPageState();
}

class _DBHomeMainPageState extends State<DBHomeMainPage> {
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    InitThirdParty.initUmengSdk().then((value) => print('UMeng sdk init $value'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomNavigationItems,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        onTap: (index) {
          setState(() {
            StatisticsReportEvents.Login(properties: {'Login':'jack123', 'age':"18", 'male':"true"});
            StatisticsReportEvents.pageStart(pageName: pagesName[currentIndex]);
            currentIndex = index;
          });
        },
      ),
    );
  }
}
