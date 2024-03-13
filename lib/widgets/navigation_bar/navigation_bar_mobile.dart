import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const NavBarLogo(),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ]),
    );
  }
}
