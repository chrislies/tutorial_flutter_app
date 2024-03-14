import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/locator.dart';
import 'package:tutorial_flutter_app/services/navigation_service.dart';

class AccountView extends StatelessWidget {
  AccountView({super.key});

  // logout user
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  // current logged in user
  User? currentUser = FirebaseAuth.instance.currentUser;

  // future to fetch user details
  Future<DocumentSnapshot<Map<String, dynamic>>> getUserDetails() async {
    return await FirebaseFirestore.instance
        .collection('Users')
        .doc(currentUser!.email)
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: getUserDetails(),
        builder: (context, snapshot) {
          // loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            // error
            return Text("Error: ${snapshot.error}");
          } else if (snapshot.hasData) {
            // data received, extract it
            Map<String, dynamic>? user = snapshot.data!.data();

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(user!['email']),
                  Text(user['username']),
                  Text(_formatTimestamp(user['created'])),
                ],
              ),
            );
          } else {
            return const Text("No user data");
          }
        },
      ),
    );
  }
}

String _formatTimestamp(Timestamp timestamp) {
  // Convert Firestore Timestamp to DateTime
  DateTime dateTime = timestamp.toDate();
  // Format DateTime into a readable string
  return '${dateTime.month}/${dateTime.day}/${dateTime.year}';
}
