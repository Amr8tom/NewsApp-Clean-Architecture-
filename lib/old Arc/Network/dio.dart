import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
class DioHelper {

  static List<dynamic>popo=[];
  static Dio dio;
  static init(){
    dio=Dio(
      BaseOptions(
        baseUrl:"https://newsapi.org/",
        receiveDataWhenStatusError: true,
      )
    );
  }
  static Future<Response> gett({@required String url,@required Map<String,dynamic>qury })
  async{
    return await dio.get(url,queryParameters:qury);
        //.then((value){print("Value is got and its >>>>>>>>>>>>>> : ${value.data['articles'][2]['title']}");
        //popo.add(value.data['articles'][8]['title']);
        //print("yooooooooooo : $popo");
        //return value.data;
        //})
        //.catchError((error){print('the eror is : $error');});
}
}