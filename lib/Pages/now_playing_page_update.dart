import 'package:flut22222/Common/my_keys.dart';
import 'package:flut22222/Model/sound.dart';

import 'package:flutter/material.dart';

import '../Widgets/ListViewAndGridView/my_list_view_button_update.dart';

//para actualizar la lista

class NowPlayingPageUpdate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NowPlayingPageState();
}

class NowPlayingPageState extends State<NowPlayingPageUpdate> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => myListViewKey.currentState
            ?.add(Sound(title: "Vamos Belgrano", author: "Facutota")),
        child: Icon(Icons.add),
      ),
      body: SafeArea(child: MyListViewButtonUpdate()),
    );
  }
}
