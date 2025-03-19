import 'package:flutter/material.dart';
// import 'package:flutter_practice/assignments/p01.dart';
// import 'package:flutter_practice/assignments/p02.dart';
// import 'package:flutter_practice/assignments/p03.dart';
import 'package:flutter_practice/assignments/p04.dart';

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
                children: <TextSpan>[
                  TextSpan(
                    text: 'find',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(text: ' A Tutor'),
                ],
              ),
            ),
          ],
        ),
      ),

      body: P04(),
      bottomNavigationBar: const BottomAppBar(
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
