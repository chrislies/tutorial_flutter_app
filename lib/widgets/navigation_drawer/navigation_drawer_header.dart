import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 150,
      color: priamryColor,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Drawer HEADER TEXT",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Text(
            "TAP HERE",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
