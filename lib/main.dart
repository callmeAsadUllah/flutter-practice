import 'package:flutter/material.dart';
// import 'package:flutter_practice/assignments/p09.dart';
import 'constants/constants.dart';
import 'pages/home.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: const FlutterPracticeApp(),
    );
  }
}
