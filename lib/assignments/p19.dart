/**
 * 19. Expandable FAQ Section
 * Wireframe:
 * [ Q1 ] ▼
 * A1: Answer Text
 * [ Q2 ] ▶
 * Use ExpansionTile or ListTile with toggle logic.
 */

import 'package:flutter/material.dart';

class P19 extends StatefulWidget {
  const P19({super.key});

  @override
  State<P19> createState() => _P19State();
}

class _P19State extends State<P19> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context, index) => Divider(color: Colors.amber[200]),
      itemBuilder: (BuildContext context, int index) {
        return ExpansionTile(
          title: Text('Item $index'),
          children: <Widget>[
            ListTile(title: Text('Sub-item 1')),
            ListTile(title: Text('Sub-item 2')),
          ],
          onExpansionChanged: (bool expanded) {
            print('ExpansionTile expanded: $expanded');
          },
        );
      },
    );
  }
}
