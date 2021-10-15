import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled4/Cubit/NewsStates.dart';
import 'package:untitled4/Network/dio.dart';
import 'package:untitled4/Screens/Business.dart';
import 'package:untitled4/Screens/Science.dart';
import 'package:untitled4/Screens/Settings.dart';
import 'package:untitled4/Screens/Sports.dart';
import 'NewsStates.dart';
class NewsCubit extends Cubit<states> {
  NewsCubit() : super(state1());
  static NewsCubit get(context){
    return BlocProvider.of(context);
  }
  List<Widget> screens =[Business(),Science(),Sports(),Settings()];
  List<dynamic>business =[];
  List<dynamic> Sportss =[];
  List<dynamic> science =[];
  var x =0;
  List<BottomNavigationBarItem> item =[
    BottomNavigationBarItem(icon:Icon(Icons.business),label: "Business",),
    BottomNavigationBarItem(icon:Icon(Icons.science),label: "Science",),
    BottomNavigationBarItem(icon:Icon(Icons.sports),label: "Sports"),
    BottomNavigationBarItem(icon:Icon(Icons.settings),label: "Settings"),
  ];
  int index=0;
  void changeindex ({@required int Currentindex}) {
    index=Currentindex;
    emit(state1());
  }
   getbusiness()async{
     DioHelper.gett(url: "v2/top-headlines",qury:{'country':'ca','apiKey':'4331811f993a4055b467eba3237eca0f'}).
    then((value) {
     business=value.data["articles"];
      print("the value is    :  ${value.data["articles"]}");
    print("data inserted sucssefully");
    emit(state4());
    }).catchError((error){
      print("the error is $error");
      emit(state5());
    });
  }
  getsports()async{
    DioHelper.gett(url:"v2/top-headlines",
        qury:{"country":"eg",
          "category":"sports",
          "apiKey":"4331811f993a4055b467eba3237eca0f"
        }).then((value) {
      Sportss=value.data['articles'];
      print("Sports done sucssefully");
    }).catchError((error){print("error is $error");});
  }
  gerscience()async{
    DioHelper.gett(url:"v2/top-headlines",
        qury:{"country":"eg",
          "category":"science",
          "apiKey":"4331811f993a4055b467eba3237eca0f"
        }).then((value) {
      science=value.data['articles'];
      print("Sports done sucssefully");
    }).catchError((error){print("error is $error");});
  }

}