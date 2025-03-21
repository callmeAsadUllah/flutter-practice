import 'package:flutter/material.dart';

class P09 extends StatefulWidget {
  const P09({super.key});

  @override
  State<P09> createState() => _P09State();
}

class _P09State extends State<P09> {
  int _selectedIndex = 0;

  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose(); // Dispose of PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            children: <TextSpan>[TextSpan(text: 'Flutter Practice App')],
          ),
        ),
        centerTitle: true,
      ),
      body: PageView(
        pageSnapping: true,
        controller: pageController,
        children: const <Widget>[
          Center(child: Text("Home")),
          Center(child: Text("Search")),
          Center(child: Text("Favorites")),
          Center(child: Text("Profile")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurpleAccent,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
