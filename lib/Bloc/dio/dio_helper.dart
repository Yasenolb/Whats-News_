import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio;
  static Dio dio2;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://newsapi.org/',
      receiveDataWhenStatusError: true,
    ));
    dio2 = Dio(BaseOptions(
      baseUrl: 'https://api.coingecko.com/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    String url,
    dynamic query,
  }) async {
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> getData2({
    String url2,
    dynamic query2,
  }) async {
    return await dio2.get(url2, queryParameters: query2);
  }
}
