import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/widgets/call_to_action/call_to_action.dart';
import 'package:tutorial_flutter_app/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
        SizedBox(height: 100),
        CallToAction(title: "Mobile Button"),
      ],
    );
  }
}
