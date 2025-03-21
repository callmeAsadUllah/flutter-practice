import 'package:flutter/material.dart';
// import 'package:flutter_practice/assignments/p01.dart';
// import 'package:flutter_practice/assignments/p02.dart';
// import 'package:flutter_practice/assignments/p03.dart';
// import 'package:flutter_practice/assignments/p04.dart';
// import 'package:flutter_practice/assignments/p05.dart';
// import 'package:flutter_practice/assignments/p06.dart';
// import 'package:flutter_practice/assignments/p07.dart';
import 'package:flutter_practice/assignments/p08.dart';
// import 'package:flutter_practice/assignments/p09.dart';
// import 'package:flutter_practice/assignments/p10.dart';
// import 'package:flutter_practice/assignments/p11.dart';
// import 'package:flutter_practice/assignments/p12.dart';
// import 'package:flutter_practice/assignments/p13.dart';
// import 'package:flutter_practice/assignments/p14.dart';
// import 'package:flutter_practice/assignments/p15.dart';
// import 'package:flutter_practice/assignments/p16.dart';
// import 'package:flutter_practice/assignments/p17.dart';
// import 'package:flutter_practice/assignments/p18.dart';
// import 'package:flutter_practice/assignments/p19.dart';
// import 'package:flutter_practice/assignments/p20.dart';

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
      body: P08(),
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
