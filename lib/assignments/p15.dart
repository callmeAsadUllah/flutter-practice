import 'package:flutter/material.dart';

class P15 extends StatelessWidget {
  const P15({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'AixShopping Cart',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Subheader for AixCode',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 10),
                  Text('5.0'),
                ],
              ),
              SizedBox(width: 20),
              Row(
                children: [
                  Icon(Icons.home, color: Colors.blue),
                  SizedBox(width: 10),
                  Text('Sweet Home'),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'This is a description.',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
            ),
            child: Text('Button'),
          ),
        ],
      ),
    );
  }
}
