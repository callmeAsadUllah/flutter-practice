import 'package:flutter/material.dart';

class P13 extends StatelessWidget {
  const P13({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/avatar-svgrepo-com.png'),
            ),
            title: Text('Muhammad Asad Ullah'),
            trailing: IconButton(
              icon: Icon(Icons.call, color: Colors.blue),
              onPressed: () {
                print('Call Muhammad Asad Ullah');
              },
            ),
          ),
        ),
        SizedBox(height: 10),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/avatar-svgrepo-com.png'),
            ),
            title: Text('Muhammad Asad Ullah'),
            trailing: IconButton(
              icon: Icon(Icons.message, color: Colors.green),
              onPressed: () {
                print('Message Muhammad Asad Ullah');
              },
            ),
          ),
        ),
      ],
    );
  }
}
