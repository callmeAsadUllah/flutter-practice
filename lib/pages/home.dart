import 'package:flutter/material.dart';
import 'auth/login.dart';
import 'auth/register.dart';

class FlutterPracticeApp extends StatelessWidget {
  const FlutterPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [Tab(text: 'Login'), Tab(text: 'Register')]),
          title: Row(
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
        body: const TabBarView(children: [Login(), Register()]),
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
      ),
    );
  }
}
