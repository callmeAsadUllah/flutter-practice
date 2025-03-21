import 'package:flutter/material.dart';

class P12 extends StatelessWidget {
  const P12({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton Pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () {
                print('OutlinedButton Pressed');
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              icon: Icon(Icons.home, color: Colors.blue),
              label: Text('Outlined Button'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                print('TextButton Pressed');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
              child: Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}
