import 'package:flutter_app/data/api/error_entity.dart';
import 'package:flutter_app/data/repository/news/news_model_entity.dart';
import 'package:flutter_app/data/repository/user/user_model_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "ErrorEntity") {
      return ErrorEntity.fromJson(json) as T;
    } else if (T.toString() == "NewsModelEntityData") {
      return NewsModelEntity.fromJson(json) as T;
    } else if (T.toString() == "UserModelData") {
      return UserModelData.fromJson(json) as T;
    } else {
      return null;
    }
  }
}
