import 'package:flutter/cupertino.dart';

import '../util/util.dart';
import '../view/page/login_page.dart';

class NavigatorUtil {
  /// 跳转页面
  static void pushPage(BuildContext context, Widget page,
      {String pageName, bool needLogin = false}) {
    if (context == null || page == null) return;
    if (needLogin && Util.isLogin()) {
      // 需要登录
      pushPage(context, LoginPage());
      return;
    }
    Navigator.push(context, new CupertinoPageRoute(builder: (ctx) => page));
  }

  /// 根据路由名字跳转
  /// pageName 注册的路由名字
  static void pushNamed(BuildContext context, String pageName) {
    Navigator.of(context).pushNamed(pageName);
  }

  /// 替换当前页面为push进入的页面
  static void pushReplacementNamed(BuildContext context, String pageName) {
    Navigator.of(context).pushReplacementNamed(pageName);
  }

  /// 替换当前页面为push进入的页面
  static void pushReplacementPage(BuildContext context, Widget page) {
    Navigator.pushReplacement(
        context, new CupertinoPageRoute(builder: (ctx) => page));
  }

  /// Navigator.pop返回上一个页面。
  static void popFrontPage(BuildContext context) {
    Navigator.pop(context);
  }
}
