import 'package:flut22222/Pages/login_page.dart';
import 'package:flut22222/Pages/my_home_page_cf.dart';
import 'package:flut22222/Pages/now_playing_page.dart';
import 'package:flut22222/Pages/play_list_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

const String routeHome = "/home";
const String routeLogin = "/login";
const String routePlayList = "/play_list";
const String routeNowPlaying = "/now_playing";

class MyRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        return PageTransition(
            child: MyHomePageCF(),
            type: PageTransitionType.scale,
            settings: settings,
            alignment: Alignment.center);
      case "/login":
        return MaterialPageRoute(builder: (_) => LoginPage());
      case "/play_list":
        return MaterialPageRoute(builder: (_) => PlayListPage());
      case "/now_playing":
        return MaterialPageRoute(builder: (_) => NowPlayingPage());
      default:
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }
}
