import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/Cubit/NewsCubit.dart';
import 'package:untitled4/Cubit/NewsStates.dart';
import 'package:untitled4/Network/dio.dart';
class Newslayout extends StatelessWidget {
  const Newslayout({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>NewsCubit()..getbusiness()..getsports()..gerscience(),
      child: BlocConsumer<NewsCubit,states>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            appBar: AppBar(
              title: Text("NewsApp"),
            ),
            body:NewsCubit.get(context).screens[NewsCubit.get(context).index],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: NewsCubit.get(context).index,
              onTap: (index){NewsCubit.get(context).changeindex(Currentindex: index);},
              items: NewsCubit.get(context).item,
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed:(){
                //DioHelper.gett(url: "v2/top-headlines",qury:{'country':'eg','apiKey':'4331811f993a4055b467eba3237eca0f'});
                //print("count of businnesss is :     ${NewsCubit().business.length} ");
                NewsCubit.get(context).getbusiness();
              },
              // https://newsapi.org/v2/top-headlines?country=ca&apiKey=4331811f993a4055b467eba3237eca0f
            ),
          );
        },
      ),
    );
  }
}