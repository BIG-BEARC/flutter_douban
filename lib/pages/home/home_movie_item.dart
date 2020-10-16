import 'package:flutter/material.dart';
import 'package:flutter_douban/model/home_model.dart';
import 'package:flutter_douban/widgets/dashed_line.dart';
import 'package:flutter_douban/widgets/start_rating.dart';

class DBHomeMovieItem extends StatelessWidget {
  final MovieItem movieItem;

  DBHomeMovieItem(this.movieItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(),
            SizedBox(
              height: 8,
            ),
            buildContent(),
            SizedBox(
              height: 8,
            ),
            buildFooter()
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Color.fromARGB(255, 238, 205, 144),
      ),
      child: Text(
        "No.${movieItem.rank}",
        style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          child: Image.network(
            movieItem.imageURL,
            height: 150,
          ),
          borderRadius: BorderRadius.circular(3),
        ),
        buildContentInfo(),
        SizedBox(
          width: 8,
        ),
        buildContentLine(),
        buildContentWish()
      ],
    );
  }

  Widget buildContentInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentInfoTitle(),
          SizedBox(height: 8,),
          buildContentInfoRate(),
          SizedBox(
            height: 8,
          ),
          buildContentInfoDesc()
        ],
      ),
    );
  }

  Widget buildContentInfoTitle() {
    return Text.rich(TextSpan(children: [
      WidgetSpan(
          child: Icon(
            Icons.play_circle_outline,
            color: Colors.orangeAccent,
            size: 40,
          ),
          baseline: TextBaseline.ideographic,
          alignment: PlaceholderAlignment.middle),
      WidgetSpan(
          child: Text(
            movieItem.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          alignment: PlaceholderAlignment.middle),
      WidgetSpan(
          child: Text("(${movieItem.playDate})"),
          style: TextStyle(fontSize: 18, color: Colors.grey))
    ]));
  }

  Widget buildContentInfoRate() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: Row(
        children: [
          StartRatingWidget(rating: movieItem.rating,size: 20,),
          SizedBox(
            width: 6,
          ),
          Text(
            "${movieItem.rating}",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget buildContentInfoDesc() {
    // 1.字符串拼接
    final genresString = movieItem.genres.join(" ");
    final directorString = movieItem.director.name;
    List<Avatars> casts = movieItem.casts;
    final actorString = movieItem.casts.map((item) => item.name).join(" ");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: Text(
        actorString,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
  Widget buildContentLine() {
    return Container(
      height: 100,
      child: DBDashedLine(
        axis: Axis.vertical,
        dashedLineWidth: .4,
        dashedLineHeight: 6,
        count: 10,
        color: Colors.pink,
      ),
    );
  }
  Widget buildContentWish() {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/home/wish.png"),
          Text(
            "想看",
            style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 235, 170, 60)
            ),
          )
        ],
      ),
    );
  }

  // 3.尾部的布局
  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        movieItem.originalTitle,
        style: TextStyle(fontSize: 20, color: Color(0xff666666)),
      ),
    );
  }
}
