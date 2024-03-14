import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/widgets/navigation_drawer/drawer_item.dart';
import 'package:tutorial_flutter_app/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:tutorial_flutter_app/routing/route_names.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 12)],
      ),
      // child: const Column(
      //   children: [
      //     NavigationDrawerHeader(),
      //     DrawerItem(
      //       title: "Videos",
      //       icon: Icons.list,
      //       navigationPath: VideosRoute,
      //     ),
      //     DrawerItem(
      //       title: "Favorites",
      //       icon: Icons.favorite,
      //       navigationPath: AccountRoute,
      //     ),
      //     DrawerItem(
      //       title: "Account",
      //       icon: Icons.person,
      //       navigationPath: AccountRoute,
      //     ),
      //   ],
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              NavigationDrawerHeader(),
              const SizedBox(height: 25),
              // videos tile
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 10),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.list,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  title: Text("Videos"),
                  onTap: () {
                    // pop drawer
                    Navigator.pop(context);
                  },
                ),
              ),

              // favorites tile
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 10),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.favorite,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  title: Text("Favorites"),
                  onTap: () {
                    // pop drawer
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/favorites_view');
                  },
                ),
              ),

              // account tile
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 10),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.person,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  title: Text("Account"),
                  onTap: () {
                    // pop drawer
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/account_view');
                  },
                ),
              ),
            ],
          ),

          // logout tile
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 25),
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.logout,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              title: Text("Log Out"),
              onTap: () {
                // pop drawer
                Navigator.pop(context);
                logout();
              },
            ),
          ),
        ],
      ),
    );
  }
}
