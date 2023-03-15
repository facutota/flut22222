import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_list_tile_button_global_key.dart';
import 'package:flutter/material.dart';
import 'package:flut22222/Model/sound.dart';

import '../../Common/my_keys.dart';

class MyListViewButtonUpdate extends StatefulWidget {
  MyListViewButtonUpdate() : super(key: myListViewKey);

  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<MyListViewButtonUpdate> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    super.initState();
    mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.red,
      child: ListView.builder(
        shrinkWrap:
            true, //la lista se adapta al contenido y el color de contenedor termina en la ultima cancion
        reverse: true, //se muestra el orden de la lista al reves
        //scrollDirection: Axis.horizontal, sirve para cambiar la forma de presentacion pero da error ya que el width es infinito en listtile
        //physics: NeverScrollableScrollPhysics(),  para que se scrolle la app
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          Sound sound = mySounds[index];
          return Dismissible(
            direction: DismissDirection
                .endToStart, //para elegir de que direccion se elimina el item
            key: ObjectKey(sound),
            child: MyListTileButtonGlobalKey(sound, index),
            onDismissed: (direction) {
              remove(sound);
            },
          );
        },
      ),
    );
  } //return

  update(Sound sound, int index) {
    setState(() {
      mySounds[index] = sound;
    });
  }

  add(Sound sound) {
    setState(() {
      mySounds.add(sound);
    });
  }

  remove(Sound sound) {
    setState(() {
      mySounds.remove(sound);
    });
  }
}
