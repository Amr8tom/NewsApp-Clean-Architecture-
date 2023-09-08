import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/article/presentation/bloc/news_cubit.dart';
import 'package:news/features/article/presentation/bloc/news_states.dart';

class HomeViewBody extends StatelessWidget {
 const HomeViewBody({Key? key}) : super(key: key);



@override
Widget build(BuildContext context) {
  return BlocConsumer<NewsCubit, NewsState>(
    listener: (context, state) {
    },
    builder: (context, state) {
      var cubitVariable=NewsCubit.get(context);
      return Scaffold(
        body: Center(
          child: cubitVariable.layOut[cubitVariable.selectedItem],
        ),
        appBar: AppBar(
          title: const Text('News app',
            ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: cubitVariable.bottomItems,
          currentIndex: cubitVariable.selectedItem,
          selectedItemColor: Colors.black,
          onTap: cubitVariable.onItemTapped,
        ),
      );
    },
  );
}}
