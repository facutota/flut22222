import 'package:flut22222/Pages/now_playing_page.dart';
import 'package:flutter/material.dart';

class PlayListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PlayListPageState();
}

class PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          child: Text("NowPlayingPage"),
          onPressed: () => {Navigator.pop(context)},
        ),
      ),
    );
  }
}
