///
/// 请求结果 返回的基类
/// BaseResponse<T> 返回 success:true, code:1, description："", data： Map<String, dynamic>.
/// ---------------------------------------------------------------------------
class BaseResponse<T> {
  // 是否成功的标识
  bool success;

  // 标识code
  int code;

  // 标识msg
  String description;

  // 数据内容
  Map<String, dynamic> data;

  BaseResponse({this.success, this.code, this.description, this.data});

  factory BaseResponse.fromJson(jsonRes) {
    return BaseResponse(
        success: jsonRes["success"],
        code: jsonRes["code"],
        description: jsonRes["description"],
        // data 的值需要经过工厂转换为我们传进来的类型
        data: jsonRes["data"]);
  }

  @override
  String toString() {
    StringBuffer sb = new StringBuffer('{');
    sb.write("\"success\":\"$success\"");
    sb.write(",\"code\":$code");
    sb.write(",\"description\":\"$description\"");
    sb.write(",\"data\":\"$data\"");
    sb.write('}');
    return sb.toString();
  }
}

