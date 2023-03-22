// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyAppBarMenu extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return AppBar(
      title: Text("Inicio"),
      backgroundColor: Colors.amber,
      elevation: 20,
      shadowColor: Colors.blue,
      centerTitle: true,
      toolbarOpacity: 0.5,
      /* leading: Icon(
        Icons.arrow_back,
        color: Colors.blue,
      ),*/
      actions: [
        Icon(
          Icons.search,
          color: Colors.blue,
        ),
        PopupMenuButton(
            color: Colors.orange,
            elevation: 30,
            shape: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            )),
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
                  PopupMenuItem(
                      value: 1,
                      child: Text(
                        "Compartir",
                        style: TextStyle(color: Colors.white),
                      )),
                  PopupMenuItem(
                      value: 2,
                      child: Text("Obtener Link",
                          style: TextStyle(color: Colors.white))),
                ])
      ],
      //toolbarHeight: 90, esto no funciona ya que esta en el override
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
