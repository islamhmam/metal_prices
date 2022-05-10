import 'package:dio/dio.dart';

class DioHelper{

  // https://www.goldapi.io/api/XAU/USD?

  static Dio? dio;

  static init(){
    dio=Dio(
      BaseOptions(
        baseUrl:'https://www.goldapi.io/api/',
        receiveDataWhenStatusError: true,
      )
    );
  }


  static Future<Response<dynamic>> getData(String url) async{
    dio!.options.headers= {
      'x-access-token': 'goldapi-11n518l2t5952d-io',
    };

    return await dio!.get(url);


  }





}