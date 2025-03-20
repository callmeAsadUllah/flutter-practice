import 'package:flutter/material.dart';
// import 'package:flutter_practice/assignments/p01.dart';
// import 'package:flutter_practice/assignments/p02.dart';
// import 'package:flutter_practice/assignments/p03.dart';
// import 'package:flutter_practice/assignments/p04.dart';
// import 'package:flutter_practice/assignments/p05.dart';
// import 'package:flutter_practice/assignments/p06.dart';
import 'package:flutter_practice/assignments/p07.dart';
// import 'package:flutter_practice/assignments/p09.dart';

class FlutterPracticeApp extends StatelessWidget {
  const FlutterPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                children: <TextSpan>[TextSpan(text: 'Flutter Practice App')],
              ),
            ),
          ],
        ),
      ),
      body: P07(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                children: <TextSpan>[
                  TextSpan(text: '<> with \u2764 by Muhammad Asad Ullah'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
