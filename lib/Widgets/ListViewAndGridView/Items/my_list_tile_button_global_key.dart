import 'package:flut22222/Common/my_keys.dart';
import 'package:flut22222/Model/sound.dart';
import 'package:flutter/material.dart';

class MyListTileButtonGlobalKey extends StatelessWidget {
  Sound sound;
  int index;

  MyListTileButtonGlobalKey(this.sound, this.index);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(
        sound.title,
        style: TextStyle(fontSize: 30),
      ),
      subtitle: Text(sound.author),
      trailing: InkWell(
          onTap: () => myListViewKey.currentState?.remove(sound),
          child: Icon(Icons.close)),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: () =>
          myListViewKey.currentState?.update(sound..title = "Hola mund", index),
    );
  }
}
