import 'package:flutter/material.dart';
import './06_douban/pages/main/ZMJMainPage.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent
      ),
      home: ZMJMainPage(),
    );
  }
}













