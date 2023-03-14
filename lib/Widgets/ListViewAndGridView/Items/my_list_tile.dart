import 'package:flut22222/Model/sound.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  Sound sound;
  MyListTile(this.sound);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(
        sound.title,
        style: TextStyle(fontSize: 30),
      ),
      subtitle: Text(sound.author),
      trailing: Icon(Icons.more_vert),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: () {
        print("ListTIle");
      },
    );
  }
}
