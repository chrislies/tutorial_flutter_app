import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tutorial_flutter_app/locator.dart';
import 'package:tutorial_flutter_app/routing/route_names.dart';
import 'package:tutorial_flutter_app/routing/router.dart';
import 'package:tutorial_flutter_app/services/navigation_service.dart';
import 'package:tutorial_flutter_app/widgets/centered_view/centered_view.dart';
import 'package:tutorial_flutter_app/widgets/navigation_bar/navigation_bar.dart';
import 'package:tutorial_flutter_app/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          endDrawer:
              sizingInformation.deviceScreenType == DeviceScreenType.mobile
                  ? const NavDrawer()
                  : null,
          backgroundColor: Colors.white,
          body: CenteredView(
            child: Column(
              children: [
                const NavBar(),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
