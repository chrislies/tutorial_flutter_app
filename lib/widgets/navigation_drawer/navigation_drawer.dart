import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/widgets/navigation_drawer/drawer_item.dart';
import 'package:tutorial_flutter_app/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:tutorial_flutter_app/routing/route_names.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 12)],
      ),
      child: const Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(
              title: "Episodes",
              icon: Icons.videocam,
              navigationPath: EpisodesRoute),
          DrawerItem(
              title: "About", icon: Icons.help, navigationPath: AboutRoute),
        ],
      ),
    );
  }
}
