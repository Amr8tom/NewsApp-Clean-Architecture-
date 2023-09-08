import 'package:flutter/material.dart';

class SportsViewBody extends StatelessWidget {
  const SportsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Center(
            child: Text('Sports news'),
          )
        ],
      ) ,
    );
  }
}
