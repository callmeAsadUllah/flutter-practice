import 'package:flutter/material.dart';

class P02 extends StatelessWidget {
  const P02({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 56,
          backgroundImage: AssetImage('images/avatar-svgrepo-com.png'),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Muhammad Asad Ullah',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400),
              child: Text(
                'I am a Software Engineer and a Flutter Developer. I have been working in the field of software development for the last 1 year.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
