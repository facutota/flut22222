import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

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
      leading: Icon(
        Icons.arrow_back,
        color: Colors.blue,
      ),
      actions: [
        Icon(
          Icons.search,
          color: Colors.blue,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.blue,
        ),
      ],
      //toolbarHeight: 90, esto no funciona ya que esta en el override
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
