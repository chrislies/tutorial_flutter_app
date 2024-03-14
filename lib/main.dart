import 'package:firebase_core/firebase_core.dart';
import 'package:tutorial_flutter_app/auth/auth.dart';
import 'package:tutorial_flutter_app/auth/login_or_register.dart';
import 'package:tutorial_flutter_app/theme/dark_mode.dart';
import 'package:tutorial_flutter_app/theme/light_mode.dart';
import 'package:tutorial_flutter_app/views/account/account_view.dart';
import 'package:tutorial_flutter_app/views/favorites/favorites_view.dart';
import 'package:tutorial_flutter_app/views/home/home_view.dart';
import 'package:tutorial_flutter_app/views/home/layout_template/layout_template.dart';
import 'package:tutorial_flutter_app/views/videos/videos_view.dart';
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
      routes: {
        '/login_register_page': (context) => const LoginOrRegister(),
        '/home_view': (context) => const HomeView(),
        '/videos_view': (context) => const VideosView(),
        '/favorites_view': (context) => const FavoritesView(),
        '/account_view': (context) => AccountView(),
      },
      // home: const LayoutTemplate());
      home: const AuthPage(),
    );
  }
}
