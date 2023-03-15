import 'package:flut22222/Model/sound.dart';
import 'package:flutter/material.dart';

typedef VoidCallbackParam(Sound sound);

class MyListTileButton extends StatelessWidget {
  Sound sound;
  VoidCallbackParam voidCallbackParam;
  MyListTileButton(this.sound, this.voidCallbackParam);
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
          onTap: () => voidCallbackParam(sound), child: Icon(Icons.close)),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: () {
        print("ListTIle");
      },
    );
  }
}
