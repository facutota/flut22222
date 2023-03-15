import 'package:flut22222/Widgets/ListViewAndGridView/Actividad/cover_container.dart';
import 'package:flut22222/Widgets/ListViewAndGridView/Actividad/sound_list_tile.dart';

import 'package:flutter/material.dart';
import 'package:flut22222/Model/sound.dart';

class PlayListView extends StatefulWidget {
  // MyListViewButtonDeleteGlobalKey() : super(key: myListViewKey);

  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<PlayListView> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    super.initState();
    mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 270,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sounds.length,
                itemBuilder: (context, index) {
                  return CoverContainer(this.mySounds[index].cover);
                }),
          ),
          ListView.builder(
            shrinkWrap:
                true, //la lista se adapta al contenido y el color de contenedor termina en la ultima cancion
            //reverse: true, //se muestra el orden de la lista al reves
            //scrollDirection: Axis.horizontal, sirve para cambiar la forma de presentacion pero da error ya que el width es infinito en listtile
            physics:
                NeverScrollableScrollPhysics(), // para que se scrolle la app
            itemCount: sounds.length,
            itemBuilder: (context, index) {
              Sound sound = mySounds[index];
              return SoundListTile(sound);
            },
          ),
        ],
      ),
    );
  } //return
}
