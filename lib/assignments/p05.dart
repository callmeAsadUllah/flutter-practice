import 'package:flutter/material.dart';

class P05 extends StatelessWidget {
  const P05({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.person, color: Colors.blue, size: 24),
                  const SizedBox(width: 16),
                  Text(
                    'Muhammad Asad Ullah',
                    style: TextStyle(fontSize: 20, color: Colors.black87),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Icon(Icons.email, color: Colors.blue, size: 24),
                  const SizedBox(width: 16),
                  Text(
                    'asadullah@asadullahcorp.io',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Icon(Icons.phone, color: Colors.blue, size: 24),
                  const SizedBox(width: 16),
                  Text('+92 (307) 9067609', style: TextStyle(fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
