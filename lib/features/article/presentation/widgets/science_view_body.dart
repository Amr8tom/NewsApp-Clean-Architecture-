import 'package:flutter/material.dart';

class ScienceViewBody extends StatelessWidget {
  const ScienceViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('Science news'),
          )
        ],
      ),
    );
  }
}
