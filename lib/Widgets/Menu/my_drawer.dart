// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: // Image.asset("assets/images/cody.jpeg"), //de esta forma ponemos la imagen cuadrada
                  CircleAvatar(
                backgroundImage: AssetImage("assets/images/cody.jpeg"),
              ),
              accountName: Text("Facundo Medina"),
              accountEmail: Text("Facutota@gmail.com")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Inicio"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_play_outlined),
            title: Text("Mi Lista"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configuracion"),
          ),
          Divider(
            height: 6,
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text("Cerrar Sesion"),
          ),
        ],
      ),
    );
  }
}
