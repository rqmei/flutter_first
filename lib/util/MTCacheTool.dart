import 'sp_util.dart';
import '../common/base-constant.dart';
class MTCacheTool {


  /// 获取token 判断登录状态
  static Future<bool> getLoginState() async {
    String token = SpUtil.getString(BaseConstant.keyToken);
    if (token == null || token == "") {
      return false;
    }
    print("getLoginState $token");
    return true;
  }
}
