import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/article/presentation/bloc/news_cubit.dart';
import 'package:news/features/article/presentation/pages/home_view.dart';

import 'config/themes/light_mood.dart';

void main() {
  runApp(
      BlocProvider(
    create: (context) => NewsCubit(),
    child:const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightMood.lightTheme,
      home: const HomeView(),
    );
  }
}

