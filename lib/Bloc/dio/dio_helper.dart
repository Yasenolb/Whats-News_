
import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio;
  static Dio dio2;
  static Dio dio3;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://newsapi.org/',
      receiveDataWhenStatusError: true,

    ));
    dio2 = Dio(BaseOptions(
      baseUrl: 'https://api.coingecko.com/',
      receiveDataWhenStatusError: true,

    ));


    dio3 = Dio(BaseOptions(
      baseUrl: 'https://app.sportdataapi.com/',
      receiveDataWhenStatusError: true,

    ));



  }


  static Future<Response> getData({
    String url,
    dynamic query,
  }) async {
    return await dio.get(url, queryParameters: query);
  }
//https://api.nomics.com/v1/currencies/ticker?key=fdd1d73e777d52a4cf9bdeaf2df038b3158be3bc&ids=BTC,ETH,XRP&interval=1d,30d&convert=EUR&per-page=100&page=1


  static Future<Response> getData2({
    String url2,
    dynamic query2,
  }) async {
    return await dio2.get(url2, queryParameters: query2);
  }


  static Future<Response> getData3({
    String url3,
    dynamic query3,
  }) async {
    return await dio3.get(url3, queryParameters: query3);
  }


}

