import 'package:flutter/material.dart';

// To keep styling consistent within the navbar, utilize a public navbar item class
class NavBarItem extends StatelessWidget {
  // Takes in a string 'title'
  final String title;
  const NavBarItem(this.title); // Initialize the string title

  @override
  Widget build(BuildContext context) {
    // Root of navbar item will be a text widget
    return Text(
      title,
      style: const TextStyle(fontSize: 18),
    );
  }
}
