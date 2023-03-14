import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_card.dart';
import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_container.dart';
import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flut22222/Model/sound.dart';

class MyListViewContainer extends StatelessWidget {
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
          itemBuilder: (context, index) => MyListTile(sounds[index]),
        ));
  }
}
