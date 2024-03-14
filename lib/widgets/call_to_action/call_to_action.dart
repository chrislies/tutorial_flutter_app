import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tutorial_flutter_app/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:tutorial_flutter_app/widgets/call_to_action/call_to_action_tablet_desktop.dart';

class CallToAction extends StatelessWidget {
  // Takes in a string 'title'
  final String title;
  const CallToAction({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) =>
          const CallToActionMobile(title: "Post to Firebase DB"),
      desktop: (BuildContext context) =>
          const CallToActionTabletDesktop(title: "Post to Firebase DB"),
    );
  }
}
