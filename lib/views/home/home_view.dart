import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tutorial_flutter_app/views/home/home_content_desktop.dart';
import 'package:tutorial_flutter_app/views/home/home_content_mobile.dart';
import 'package:tutorial_flutter_app/widgets/centered_view/centered_view.dart';
import 'package:tutorial_flutter_app/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            const NavBar(),
            Expanded(
                child: ScreenTypeLayout.builder(
              mobile: (BuildContext context) => const HomeContentMobile(),
              desktop: (BuildContext context) => const HomeContentDesktop(),
            )),
          ],
        ),
      ),
    );
  }
}
