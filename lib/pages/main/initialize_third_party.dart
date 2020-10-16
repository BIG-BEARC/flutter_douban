import 'package:flutter/services.dart';
import 'package:umeng_sdk/umeng_sdk.dart';


class InitThirdParty {
  static void init() {
    initUmengSdk();
  }

  static Future<String> initUmengSdk() async {
/*
  await UmengAnalyticsPlugin.init(androidKey: '5f865b4180455950e4a9646f',
      iosKey: '',
      channel: 'DBFlutter',
      logEnabled: true);*/
/*    UmengSdk.initCommon(
            androidAppkey: '5f865b4180455950e4a9646f',
            iosAppkey: '',
            channel: 'DBFlutter')
        .then((value) => print('init umeng sdk $value'));*/
    await UmengSdk.initCommon('5f865b4180455950e4a9646f', '', 'DBFlutter');
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await UmengSdk.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    //设置AUTO模式采集页面数据
    UmengSdk.setPageCollectionModeManual();
    return platformVersion;
  }


}
