// my_app.dart
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class FlutterPracticeApp extends StatelessWidget {
  const FlutterPracticeApp({super.key});

const Text.rich(
  TextSpan(
    text: 'Hello', // default text style
    children: <TextSpan>[
      TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
      TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const Center(child: Text(appTitle)),
      ),
    );
  }
}
