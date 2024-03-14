import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/services/firestore.dart';

final FirestoreService firestoreService = FirestoreService();

final TextEditingController textController = TextEditingController();

void openNoteBox(BuildContext context, String? docID) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: TextField(
        controller: textController,
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            // add a new note
            if (docID == null) {
              firestoreService.addNote(textController.text);
            } else {
              // update an existing note
              firestoreService.updateNote(docID, textController.text);
            }

            // clear the text controller
            textController.clear();

            // close the dialog box
            Navigator.pop(context);
          },
          child: Text("Add"),
        ),
      ],
    ),
  );
}
