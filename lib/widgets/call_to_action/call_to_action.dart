import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  // Takes in a string 'title'
  final String title;
  const CallToAction({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 70, 15, 70),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
