import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset("assets/icon.png"),
          ),
          const Row(mainAxisSize: MainAxisSize.min, children: [
            _NavBarItem("Episodes"),
            SizedBox(width: 60),
            _NavBarItem("About"),
          ]),
        ]));
  }
}

// To keep styling consistent within the navbar, utilize a private navbar item class
class _NavBarItem extends StatelessWidget {
  // Takes in a string 'title'
  final String title;
  const _NavBarItem(this.title); // Initialize the string title

  @override
  Widget build(BuildContext context) {
    // Root of navbar item will be a text widget
    return Text(
      title,
      style: const TextStyle(fontSize: 18),
    );
  }
}
