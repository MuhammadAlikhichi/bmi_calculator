import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'inputpage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.pink,
        scaffoldBackgroundColor: Colors.cyan,
      ),

    );
  }
}





