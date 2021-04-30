import 'package:flutter/material.dart';

import 'user_model_entity.dart';
import '../../api/http_util.dart';
import '../../api/api_config.dart';
import '../../../util/sp_util.dart';
import '../../../common/base-constant.dart';
import '.../../../../../view/widget/progress_dialog.dart';
import '.../../../../../view/widget/circular_progress_widget.dart';
import '../../../util/navigator_util.dart';
import '.../../../../../view/page/main_page.dart';

class UserRepository {
  Future<UserModelData> login(
      BuildContext context, String userName, String passwd) async {
    Map<String, dynamic> params = {
      "userName": "340103199510208551",
      "userLoginIdentity": "system_org_indentity_student",
      "passwd": "123456789",
      "platform": "android",
      "ipAddr": "192.168.18.95",
      "version": "1.0.12",
      "osDpi": "1080*1920",
      "osName": "vivo X9",
      "osVersion": "7.1.2",
      "loginCount": "1"
    };
    ProgressDialog.showProgress(context, child: CircularProgressWidget());
//    ProgressDialog.showProgress(context);
    HttpUtil.getInstance().post(ApiConfig.LOGIN, params: params,
        success: (data) {
      ProgressDialog.dismiss(context);
      print("success data = ${data}");
      if (data != null) {
        // 保存数据
        UserModelData userModelData = UserModelData.fromJson(data);
        SpUtil.putObj(BaseConstant.user, userModelData);
        SpUtil.putString(BaseConstant.keyToken, userModelData.token);
        print("用户名：" + userModelData.userName);
      }
      NavigatorUtil.pushReplacementPage(context, MainPage(currentIndex: 1));
      return data;
    }, error: (error) {
      ProgressDialog.dismiss(context);
      print("error code = ${error.code},description = ${error.description}");
    });
  }
}
