import 'package:flutter/material.dart';

import '../Values/colors_app.dart';
import '../Widgets/ListViewAndGridView/Actividad/play_list_view.dart';

class PlayListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PlayListViewPageState();
}

class PlayListViewPageState extends State<PlayListViewPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: testOpacity,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[100],
        onPressed: () {
          print("toco floating");
        },
        child: Icon(
          Icons.nightlight_round,
        ),
      ),
      body: SafeArea(
        child: PlayListView(),
      ),
    );
  }
}
