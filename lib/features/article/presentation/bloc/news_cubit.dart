import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:news/features/article/presentation/bloc/news_states.dart';

import '../pages/business_view.dart';
import '../pages/science_view.dart';
import '../pages/sports_view.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
   static NewsCubit get(BuildContext context)=>BlocProvider.of(context);
   int selectedItem = 0;
   List <BottomNavigationBarItem>bottomItems=[
    const  BottomNavigationBarItem(
         icon: Icon(Icons.business), label: 'Business'),
     const BottomNavigationBarItem(
         icon: Icon(Icons.science_outlined), label: 'Science'),
    const  BottomNavigationBarItem(
         icon: Icon(Icons.sports_soccer), label: 'Sports'),
   ];
   List<Widget> layOut = <Widget>[
    const BusinessView(),
    const  ScienceView(),

    const SportsView()
  ];
   onItemTapped(int index){
    selectedItem=index;
emit(NewsBottomNav());
  }


}
