import 'package:dark_microphone_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Microphone App',
      theme: ThemeData(
        fontFamily: 'lato'
      ),
      home: HomePage(),
    );
  }
}

