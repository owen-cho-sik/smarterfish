import 'package:flutter/material.dart';
import 'src/homepage.dart';

void main() => runApp(TabsApp());

Color primaryColor = Color(0xff109618);

// homepage.dart 로 연결하는 main 문
class TabsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabs App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}