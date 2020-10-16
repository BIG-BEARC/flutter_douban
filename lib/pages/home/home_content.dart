import 'package:flutter/material.dart';
import 'package:flutter_douban/core/statistics_report_events.dart';
import 'package:flutter_douban/model/home_model.dart';
import 'package:flutter_douban/pages/home/home_request.dart';

import 'home_movie_item.dart';

class DBHomeContent extends StatefulWidget {

  @override
  _DBHomeContentState createState() => _DBHomeContentState();
}

class _DBHomeContentState extends State<DBHomeContent> {
  final List<MovieItem> movies = [];
  @override
  void initState() {
    super.initState();
    HomeRequest.request().then((value)  {
      setState(() {
        movies.addAll(value);
      });
    });
    StatisticsReportEvents.Login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return DBHomeMovieItem(movies[index]);
        },itemCount: movies.length,),
      ),
    );
  }
}
