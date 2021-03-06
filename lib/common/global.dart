import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/util/sp_util.dart';

class Global {
  /// 初始化全局信息
  static Future init(VoidCallback callback) async {
    // 初始化是否完成
    WidgetsFlutterBinding.ensureInitialized();

    // 初始化SharedPreferences
    await SpUtil.getInstance();

    callback();
    if (Platform.isAndroid) {
      // 设置android状态栏为透明的沉浸
      // 写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}
