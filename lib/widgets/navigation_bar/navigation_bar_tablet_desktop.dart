import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/widgets/navigation_bar/navbar_item.dart';
import 'package:tutorial_flutter_app/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem("Episodes"),
              SizedBox(width: 60),
              NavBarItem("About"),
            ],
          ),
        ],
      ),
    );
  }
}
