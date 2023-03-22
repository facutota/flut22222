// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_list_tile_button.dart';
import 'package:flutter/material.dart';

typedef VoidCallbackParam(int index);

class MyBottomNavigatorBar extends StatelessWidget {
  VoidCallbackParam voidCallbackParam;
  int currentindex;
  MyBottomNavigatorBar(this.voidCallbackParam, this.currentindex, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
        onTap: voidCallbackParam,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.orange,
        iconSize: 30,
        backgroundColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontSize: 30,
          fontFamily: "Teko",
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 30,
          fontFamily: "Teko",
        ),
        currentIndex: currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Configuración"),
        ]);
  }
}
