import 'package:flut22222/Pages/login_page.dart';
import 'package:flut22222/Pages/my_home_page_cf.dart';
import 'package:flut22222/Pages/now_playing_page.dart';
import 'package:flut22222/Pages/play_list_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Pages/my_home_page_menu.dart';
import '../Pages/now_playing_page_update.dart';
import '../Pages/play_list_view_page.dart';

const String routeHome = "/home";
const String routeHomeMenu = "/home_menu";
const String routeLogin = "/login";
const String routePlayList = "/play_list";
const String routeNowPlaying = "/now_playing";
const String routeNowPlayingUpdate = "/now_playing_update";
const String routePlayListViewPage = "/play_list_view_page";

class MyRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        return PageTransition(
            child: MyHomePageCF(),
            type: PageTransitionType.scale,
            settings: settings,
            alignment: Alignment.center);
      case "/home_menu":
        return PageTransition(
            child: MyHomePageMenu(),
            type: PageTransitionType.scale,
            settings: settings,
            alignment: Alignment.center);
      case "/login":
        return MaterialPageRoute(builder: (_) => LoginPage());
      case "/play_list":
        return MaterialPageRoute(builder: (_) => PlayListPage());
      case "/now_playing":
        return MaterialPageRoute(builder: (_) => NowPlayingPage());
      case "/now_playing_update":
        return MaterialPageRoute(builder: (_) => NowPlayingPageUpdate());
      case "/play_list_view_page":
        return MaterialPageRoute(builder: (_) => PlayListViewPage());
      default:
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }
}
