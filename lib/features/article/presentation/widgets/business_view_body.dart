import 'package:flutter/material.dart';

class BusinessViewBody extends StatelessWidget {
  const BusinessViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         const Center(
            child: Text('Business news'),
          ),
        ],
      ) ,
    );
  }
}
