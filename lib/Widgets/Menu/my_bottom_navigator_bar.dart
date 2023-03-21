// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyBottomNavigatorBar extends StatelessWidget {
  const MyBottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings), label: "Configuración"),
    ]);
  }
}
