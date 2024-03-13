import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/widgets/navigation_bar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  // Side bar Drawer item takes in a string 'title', 'icon', and 'navigationPath'
  final String title;
  final IconData icon;
  final String navigationPath;

  // Pass those values into a constructor as positional arguments
  const DrawerItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 30),
          NavBarItem(title: title, navigationPath: navigationPath),
        ],
      ),
    );
  }
}
