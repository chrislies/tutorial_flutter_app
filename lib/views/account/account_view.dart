import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/locator.dart';
import 'package:tutorial_flutter_app/services/navigation_service.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Account"),
          ElevatedButton(
            onPressed: () {
              // Navigator.pop(context);
              locator<NavigationService>().navigateTo("home");
            },
            child: const Text("Go back"),
          ),
        ],
      ),
    );
  }
}
