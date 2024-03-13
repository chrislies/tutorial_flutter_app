import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var crossAxisAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center;
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 80;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FLUTTER WEB. \nTHE BASICS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: .9,
                    fontSize: titleSize),
                textAlign: textAlignment,
              ),
              const SizedBox(height: 30),
              Text(
                "How to build a Flutter Website • 1 / 6 Skip navigation simple flutter web app Avatar image 9:29 / 14:06 Building a",
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7,
                ),
                textAlign: textAlignment,
              ),
            ],
          ),
        );
      },
    );
  }
}
