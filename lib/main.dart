import 'package:firebase_core/firebase_core.dart';
import 'package:tutorial_flutter_app/auth/auth.dart';
import 'package:tutorial_flutter_app/theme/dark_mode.dart';
import 'package:tutorial_flutter_app/theme/light_mode.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkMode,
      // home: const LayoutTemplate());
      home: const AuthPage(),
    );
  }
}
