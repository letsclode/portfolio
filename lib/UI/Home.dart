import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'HomePage.dart';
import 'MobileHome.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final isWebMobile = kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android);

    if (isWebMobile) {
      return MobileHome();
    } else {
      return HomePage();
    }
  }
}
