import 'dart:ui';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/Cubit/NewsCubit.dart';
import 'package:untitled4/Cubit/NewsStates.dart';
class Business extends StatelessWidget {
  const Business({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,states>(
      listener: (context,state){},
      builder: (context,state){
        return ConditionalBuilder(
            condition: NewsCubit.get(context).business.length !=0 ,
            builder: (context)=> ListView.separated(
              physics:BouncingScrollPhysics(),
                itemBuilder:(context,index)=>Row(
                  children: [
                    Container(
                      width: 120.0,
                      height: 120.0,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image:DecorationImage(
                              image:NetworkImage("${NewsCubit.get(context).business[index]['urlToImage']}"),
                              fit: BoxFit.cover
                          )

                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 120,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Text("${NewsCubit.get(context).business[index]['title']}",
                                style: TextStyle(fontWeight:FontWeight.bold),
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("${NewsCubit.get(context).science[index]['publishedAt']}"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                separatorBuilder:(context,index)=> Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.grey[300],width: double.infinity,height: 1,),
                ),
                itemCount: NewsCubit.get(context).business.length
            ),
            fallback: (context)=>Center(
              child:CircularProgressIndicator(),
            )
        );
      },
    );
  }
}