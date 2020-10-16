package com.example.flutter_douban;


import com.umeng.commonsdk.UMConfigure;

import io.flutter.app.FlutterApplication;

public class MainApplication extends FlutterApplication {
    @Override
    public void onCreate() {
        super.onCreate();
        //App Key会在新建应用成功时产生，App Channel自己命名
        UMConfigure.init(this, "5f865b4180455950e4a9646f", "DBFlutter", UMConfigure.DEVICE_TYPE_PHONE, null);
    	UMConfigure.setLogEnabled(true);
    	android.util.Log.i("UMLog", "UMConfigure.init@MainApplication");
    }
}