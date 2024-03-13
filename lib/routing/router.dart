import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/views/about/about_view.dart';
import 'package:tutorial_flutter_app/views/episodes/episodes_view.dart';
import 'package:tutorial_flutter_app/views/home/home_view.dart';
import 'package:tutorial_flutter_app/routing/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomeView());
    case AboutRoute:
      return _getPageRoute(const AboutView());
    case EpisodesRoute:
      return _getPageRoute(const EpisodesView());
    default:
      return _getPageRoute(Container());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
