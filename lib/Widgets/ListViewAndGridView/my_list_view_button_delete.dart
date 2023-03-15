import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_list_tile_button.dart';
import 'package:flutter/material.dart';
import 'package:flut22222/Model/sound.dart';

class MyListViewButtonDelete extends StatefulWidget {
  const MyListViewButtonDelete({super.key});

  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<MyListViewButtonDelete> {
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
            child: MyListTileButton(sound, remove),
            onDismissed: (direction) {
              remove(sound);
            },
          );
        },
      ),
    );
  } //return

  remove(Sound sound) {
    setState(() {
      mySounds.remove(sound);
    });
  }
}
