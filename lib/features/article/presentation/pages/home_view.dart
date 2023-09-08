import 'package:flutter/material.dart';
import 'package:news/features/article/presentation/widgets/home_view_body.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const HomeViewBody();
  }
}
