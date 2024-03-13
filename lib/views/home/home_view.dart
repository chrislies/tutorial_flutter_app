import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tutorial_flutter_app/widgets/call_to_action/call_to_action.dart';
import 'package:tutorial_flutter_app/widgets/centered_view/centered_view.dart';
import 'package:tutorial_flutter_app/widgets/course_details/course_details.dart';
import 'package:tutorial_flutter_app/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavBar(),
              Expanded(
                  child: Row(
                children: [
                  CourseDetails(),
                  Expanded(
                      child: Center(child: CallToAction(title: "Test Button")))
                ],
              )),
            ],
          ),
        ));
  }
}
