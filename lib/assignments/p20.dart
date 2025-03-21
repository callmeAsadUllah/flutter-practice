import 'package:flutter/material.dart';

class ListItem {
  final IconData icon;
  final String title;
  final String subtitle;

  ListItem(this.icon, this.title, this.subtitle);
}

class P20 extends StatelessWidget {
  P20({super.key});

  final List<ListItem> items = [
    ListItem(Icons.home, 'Home', 'Navigate to Home'),
    ListItem(Icons.settings, 'Settings', 'Adjust app settings'),
    ListItem(Icons.person, 'Profile', 'View user profile'),
    ListItem(Icons.search, 'Search', 'Find items'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder:
          (BuildContext context, int index) => Divider(color: Colors.grey[300]),
      itemBuilder: (BuildContext context, int index) {
        final item = items[index];
        return ListTile(
          leading: Icon(item.icon),
          title: Text(item.title),
          subtitle: Text(item.subtitle),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            print('Tapped: ${item.title}');
          },
        );
      },
    );
  }
}
