import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("FLUTTER WEB. \nTHE BASICS",
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: .9, fontSize: 80)),
            SizedBox(height: 30),
            Text(
                "How to build a Flutter Website • 1 / 6 Skip navigation simple flutter web app Avatar image 9:29 / 14:06 Building a",
                style: TextStyle(
                  fontSize: 21,
                  height: 1.7,
                )),
          ],
        ));
  }
}
