import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/locator.dart';
import 'package:tutorial_flutter_app/services/navigation_service.dart';
import 'package:tutorial_flutter_app/widgets/call_to_action/open_note_box.dart';

class VideosView extends StatelessWidget {
  const VideosView({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationService navigationService = NavigationService();

    return Center(
      child: Column(
        children: [
          const Text("Videos"),
          StreamBuilder<QuerySnapshot>(
            stream: firestoreService.getNotesStream(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                List notesList = snapshot.data!.docs;

                // display all the docs as a list
                return Expanded(
                  child: ListView.builder(
                    itemCount: notesList.length,
                    itemBuilder: (context, index) {
                      // get each individual doc
                      DocumentSnapshot document = notesList[index];
                      String docId = document.id;

                      // get note from each doc
                      Map<String, dynamic> data =
                          document.data() as Map<String, dynamic>;
                      String noteText = data['note'];

                      // display as a list tile
                      return ListTile(
                        title: Text(noteText),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () => openNoteBox(context, docId),
                              icon: const Icon(Icons.settings),
                            ),
                            IconButton(
                              onPressed: () =>
                                  firestoreService.deleteNote(docId),
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              } else {
                return const Text("No notes...");
              }
            }),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.pop(context);
              locator<NavigationService>().navigateTo("home");
            },
            child: const Text("Go back"),
          ),
        ],
      ),
    );
  }
}
