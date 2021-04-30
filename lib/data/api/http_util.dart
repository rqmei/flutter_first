import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import 'api_config.dart';
import 'error_entity.dart';
import 'base_resp.dart';

///
/// 网络请求
/// ---------------------------------------------------------------------
const String GET = "get";
const String POST = "post";
const int CONNECT_TIMEOUT = 10000;
const int RECEIVE_TIMEOUT = 3000;
final String CONTENT_TYPE = Headers.formUrlEncodedContentType;

typedef ErrorCallback = void Function(int count, String msg);

/// 请求方法.
enum Method { GET, POST, PUT, DELETE }

const MethodValues = {
  Method.GET: "get",
  Method.POST: "post",
  Method.PUT: "put",
  Method.DELETE: "delete"
};

class HttpUtil {
  static HttpUtil _instance;
  Dio _dio;
  BaseOptions orgOption;

  static HttpUtil getInstance() {
    if (_instance == null) _instance = HttpUtil._init();
    return _instance;
  }

  HttpUtil._init() {
    if (_dio == null) {
      orgOption = BaseOptions(
        // 请求的Content-Type，默认值是"application/json; charset=utf-8",Headers.formUrlEncodedContentType会自动编码请求体.
//        contentType: CONTENT_TYPE,
        connectTimeout: CONNECT_TIMEOUT,
        receiveTimeout: RECEIVE_TIMEOUT,
        baseUrl: ApiConfig.HOSTSERVER,
        // 表示期望以那种格式(方式)接受响应数据。接受四种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
        responseType: ResponseType.json,
      );
      _dio = new Dio(orgOption);
      //Cookie管理
      _dio.interceptors.add(CookieManager(CookieJar()));

      //添加拦截器
      _dio.interceptors
          .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
        print("请求之前");
        print("baseUrl=${orgOption.baseUrl}");
        print("queryParameters=${orgOption.queryParameters}");
        // Do something before request is sent
        return options; //continue
      }, onResponse: (Response response) {
        print("响应之前");
        print("response=${response.toString()}");
        // Do something with response data
        return response; // continue
      }, onError: (DioError e) {
        print("错误之前");
        // Do something with response error
        return e; //continue
      }));
    }
  }

  /// 拦截器添加
  addInterceptor(Interceptor interceptor) {
    if (null != _dio) {
      _dio.interceptors.add(interceptor);
    }
  }

  addInterceptors(List<Interceptor> interceptorList) {
    if (null != _dio) {
      _dio.interceptors.addAll(interceptorList);
    }
  }

  /// 请求，返回参数为T
  /// method: 请求方法
  /// path: 请求地址
  /// params: 请求参数
  /// success: 请求成功回掉
  /// error: 请求失败回掉
  Future request<T>(Method method, String path,
      {Map<String, dynamic> params,
      headers,
      Function(Map<String, dynamic>) success,
      Function(ErrorEntity) error,
      cancelToken}) async {
    try {
      print("path--" + path);
      print("params--" + params.toString());
      Response response = await _dio.request(path,
          data: params,
          options: Options(method: MethodValues[method], headers: headers),
          cancelToken: cancelToken);
      if (response != null) {
        BaseResponse entity =
            BaseResponse.fromJson(json.decode(response.toString()));
        if (entity.code == 0) {
          /// 成功
          success(entity.data);
        } else {
          /// 失败
          error(
              ErrorEntity(code: entity.code, description: entity.description));
        }
      } else {
        error(ErrorEntity(code: -1, description: "未知错误"));
      }
    } on DioError catch (e) {
      /// 请求过程中发生错误
      error(createErrorEntity(e));
    }
  }

  /// 请求过程中错误信息
  ErrorEntity createErrorEntity(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.CANCEL:
        return ErrorEntity(code: -1, description: "请求取消");
        break;
      case DioErrorType.CONNECT_TIMEOUT:
        return ErrorEntity(code: -1, description: "连接超时");
        break;
      case DioErrorType.SEND_TIMEOUT:
        return ErrorEntity(code: -1, description: "请求超时");
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        return ErrorEntity(code: -1, description: "响应超时");
        break;
      case DioErrorType.RESPONSE:
        try {
          int errCode = dioError.response.statusCode;
          String errMsg = dioError.response.statusMessage;
          return ErrorEntity(code: errCode, description: errMsg);
        } on Exception catch (_) {
          return ErrorEntity(code: -1, description: "未知错误");
        }
        break;
      case DioErrorType.DEFAULT:
        {
          return ErrorEntity(code: -1, description: dioError.message);
        }
        break;
    }
    return ErrorEntity(code: -1, description: "未知错误");
  }

  /// get请求
  get(
    path, {
    params,
    headers,
    Function(Map<String, dynamic>) success,
    Function(ErrorEntity) error,
    cancelToken,
  }) async {
    return request(Method.POST, path,
        params: params,
        headers: headers,
        success: success,
        error: error,
        cancelToken: cancelToken);
  }

  /// post请求
  post<T>(
    path, {
    params,
    headers,
    Function(Map<String, dynamic>) success,
    Function(ErrorEntity) error,
    cancelToken,
  }) async {
    return request(Method.POST, path,
        params: params,
        headers: headers,
        success: success,
        error: error,
        cancelToken: cancelToken);
  }

  /// put请求
  put(
    path, {
    params,
    headers,
    Function(Map<String, dynamic>) success,
    Function(ErrorEntity) error,
    cancelToken,
  }) async {
    return request(Method.PUT, path,
        params: params,
        headers: headers,
        success: success,
        error: error,
        cancelToken: cancelToken);
  }

  /// 下载文件
  /// urlPath下载路径
  /// savePath 保存路径
  /// cancelToken 取消网络
  /// success 成功回掉
  /// error 出错回掉
  downloadFile(urlPath, savePath,
      {CancelToken cancelToken,
      Function(String) success,
      Function(ErrorEntity) error}) async {
    try {
      Response response = await _dio.download(urlPath, savePath,
          onReceiveProgress: (int count, int total) {
        //进度
        print("$count $total");
      }, cancelToken: cancelToken);
      if (response != null) {
        BaseResponse entity =
            BaseResponse.fromJson(json.decode(response.toString()));
        if (response.statusCode == 0) {
          /// 成功
          success(response.data);
        } else {
          /// 失败
          error(
              ErrorEntity(code: entity.code, description: entity.description));
        }
      } else {
        error(ErrorEntity(code: -1, description: "未知错误"));
      }
    } on DioError catch (e) {
      print('downloadFile error---------$e');
      error(ErrorEntity(code: -1, description: "未知错误"));
    }
  }

  /// 取消请求
  /// 同一个cancelToken 可以用于多个请求，当一个cancel token取消时，所有使用该cancel token的请求都会被取消。
  /// 所以参数可选
  ///
  void cancelRequests(CancelToken token) {
    token.cancel("cancelled");
  }
}

class HttpIOException implements Exception {
  int code;
  String message;

  HttpIOException(this.code, this.message);
}
