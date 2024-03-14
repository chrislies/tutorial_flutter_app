import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/constants/app_colors.dart';
import 'package:tutorial_flutter_app/widgets/call_to_action/open_note_box.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  const CallToActionMobile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openNoteBox(context, null),
      child: Container(
        height: 60,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        decoration: const BoxDecoration(
            color: priamryColor,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
