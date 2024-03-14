import 'package:flutter/material.dart';
import 'package:tutorial_flutter_app/views/account/account_view.dart';
import 'package:tutorial_flutter_app/views/home/home_view.dart';
import 'package:tutorial_flutter_app/routing/route_names.dart';
import 'package:tutorial_flutter_app/views/videos/videos_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomeView());
    case AccountRoute:
      return _getPageRoute(const AccountView());
    case VideosRoute:
      return _getPageRoute(const VideosView());
    default:
      return _getPageRoute(Container());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
