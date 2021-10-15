import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled4/Layouts/Newslayout.dart';
import 'package:untitled4/Network/dio.dart';

void main() {
  DioHelper.init();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.light,
      darkTheme:ThemeData(
        scaffoldBackgroundColor: Colors.black87,
      ),
      home: Newslayout(),
      theme: ThemeData(
        primarySwatch:Colors.deepOrange,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          color: Colors.white,
          elevation: 0.0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 25,
            fontWeight: FontWeight.bold
          )
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black87,

        ),
      ),
    );
  }
}
