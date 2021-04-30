import 'MTCacheTool.dart';
import 'object_util.dart';
import 'sp_util.dart';
import '../common/base-constant.dart';

class Util {
  static bool isLogin() {
    print("isLogin ${SpUtil.getString(BaseConstant.keyToken)}");
    return ObjectUtil.isNotEmpty(SpUtil.getString(BaseConstant.keyToken));
  }
}
