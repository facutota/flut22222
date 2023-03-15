import 'package:flut22222/Model/sound.dart';
import 'package:flutter/material.dart';

class SoundListTile extends StatelessWidget {
  Sound sound;
  SoundListTile(this.sound);
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
      leading: Icon(
        Icons.play_circle_fill,
        color: Colors.pink,
      ),
      onTap: () {
        print("ListTIle");
      },
    );
  }
}
