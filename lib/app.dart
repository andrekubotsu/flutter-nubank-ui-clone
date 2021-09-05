import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/modules/splash/splash_page.dart';

import 'modules/home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank September 21 UI Clone',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}
