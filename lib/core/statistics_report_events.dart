import 'package:flutter/cupertino.dart';
import 'package:umeng_sdk/umeng_sdk.dart';

///统计上报事件
class StatisticsReportEvents {
  static void Login({Map<String, dynamic> properties}) {
    //  UmengSdk.onEvent('bool', properties);
    print('发送事件');
/*    var flag = UmengAnalyticsPlugin.event('Login', label: '88888888');
    flag.then((value) => print(value));*/
    UmengSdk.onEvent('Test', properties);
    UmengSdk.onEvent('Login', properties);
  }

  static void pageStart({@required String pageName}) {
    UmengSdk.onPageStart(pageName);
  }

  static void pageEnd({@required String pageName}) {
    UmengSdk.onPageEnd(pageName);
  }
//页面开始和结束
//UMengAnalyticsPlugin.pageStart('page');
//UMengAnalyticsPlugin.pageEnd('page');
//自定义事件
//UMengAnalyticsPlugin.event('event');
}
