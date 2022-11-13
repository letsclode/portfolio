import 'package:flutter/material.dart';
import 'package:portfolio/UI/HomePage.dart';
import 'package:portfolio/UI/MobileHome.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, size) =>
            size.maxWidth < 950 ? MobileHome() : HomePage());
  }
}
