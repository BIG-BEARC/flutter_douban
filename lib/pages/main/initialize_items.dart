import 'package:flutter/cupertino.dart';
import 'file:///D:/Demo/flutter_douban/lib/pages/main/bottom_bar_item.dart';
import 'package:flutter_douban/pages/group/group.dart';
import 'package:flutter_douban/pages/home/home.dart';
import 'package:flutter_douban/pages/mall/mall.dart';
import 'package:flutter_douban/pages/profile/profile.dart';
import 'package:flutter_douban/pages/subject/subject.dart';
List<DBBottomBarItem> bottomNavigationItems = [
  DBBottomBarItem('home', '首页'),
  DBBottomBarItem('subject', '书影音'),
  DBBottomBarItem('group', '小组'),
  DBBottomBarItem('mall', '集市'),
  DBBottomBarItem('profile', '我的'),
];

List<Widget> pages = [
  DBHomePage(),
  DBSubjectPage(),
  DBGroupPage(),
  DBMallPage(),
  DBProfilePage(),
];


List<String> pagesName = [
  "DBHomePage",
  "DBSubjectPage",
  "DBGroupPage",
  "DBMallPage",
  "DBProfilePage",
];