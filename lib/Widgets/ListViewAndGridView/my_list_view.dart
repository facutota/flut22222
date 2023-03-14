import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_card.dart';
import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_container.dart';
import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flut22222/Model/sound.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: sounds.length,
      itemBuilder: (context, index) => MyListTile(sounds[index]),
    );
  }
}
