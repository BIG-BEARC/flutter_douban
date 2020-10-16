import 'package:flutter_douban/model/home_model.dart';
import 'package:flutter_douban/service/config.dart';
import 'package:flutter_douban/service/http_request.dart';

class HomeRequest{
  static Future<List<MovieItem>> request()async{
    // 2.发送网络请求获取结果
    final result =  await HttpRequest.request(HomeConfig.TOP_MOVIES_URL);
    final subjects = result["subjects"];
    // 3.将Map转成Model
    List<MovieItem> movies = [];
    for (var sub in subjects) {
      movies.add(MovieItem.fromMap(sub ));
    }
    print(movies);
    return movies;
  }
}