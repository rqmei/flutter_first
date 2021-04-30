///
///  请求报错基类{code:0,description:""}
/// --------------------------------------------------------------------
class ErrorEntity {
  /// 错误编码
  int code;

  /// 错误提示内容
  String description;

  ErrorEntity({this.code, this.description});
  factory ErrorEntity.fromJson(jsonRes) {
    return ErrorEntity(
        code: jsonRes["code"], description: jsonRes["description"]);
  }
}
