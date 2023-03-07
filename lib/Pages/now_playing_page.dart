import 'package:flut22222/Pages/my_home_page_cf.dart';
import 'package:flutter/material.dart';

class NowPlayingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NowPlayingPageState();
}

class NowPlayingPageState extends State<NowPlayingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          child: Text("MyHomePageCF"),
          onPressed: () => {Navigator.pop(context)},
        ),
      ),
    );
  }
}
