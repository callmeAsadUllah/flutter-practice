import 'package:flutter/material.dart';

class P18 extends StatelessWidget {
  const P18({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      children: List.generate(10, (index) {
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Item $index'),
            ),
          ),
        );
      }),
    );
  }
}
