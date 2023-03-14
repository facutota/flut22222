import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_card.dart';
import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_container.dart';
import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flut22222/Model/sound.dart';

class MyListViewDelete extends StatefulWidget {
  const MyListViewDelete({super.key});

  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<MyListViewDelete> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    this.mySounds = sounds;
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
            direction: DismissDirection.endToStart,
            key: ObjectKey(sound),
            child: MyListTile(sound),
            onDismissed: (direction) {
              setState(() {
                mySounds.remove(sound);
              });
            },
          );
        },
      ),
    );
  }
}
