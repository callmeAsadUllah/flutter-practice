import 'package:flutter/material.dart';

class P09 extends StatefulWidget {
  const P09({super.key});

  @override
  State<P09> createState() => _P09State();
}

class _P09State extends State<P09> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Footer Bar')),
      body: Center(
        child: Text(
          _selectedIndex == 0
              ? 'Home Screen'
              : _selectedIndex == 1
              ? 'Search Screen'
              : _selectedIndex == 2
              ? 'Cart Screen'
              : 'Profile Screen',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.grey,
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.home, color: Colors.blue, size: 24),
                    SizedBox(width: 16),
                    Text("Home", textAlign: TextAlign.center),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.search, color: Colors.blue, size: 24),
                    SizedBox(width: 16),
                    Text("Search", textAlign: TextAlign.center),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.abc, color: Colors.blue, size: 24),
                    SizedBox(width: 16),
                    Text("Cart", textAlign: TextAlign.center),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.person, color: Colors.blue, size: 24),
                    SizedBox(width: 16),
                    Text("Profile", textAlign: TextAlign.center),
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
