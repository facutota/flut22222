import 'package:flutter/material.dart';

class MyAppBarCF extends StatelessWidget implements PreferredSizeWidget {
  String title;
  MyAppBarCF(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return AppBar(
      title: Text(this.title),
      backgroundColor: Color.fromARGB(255, 51, 153, 119),
      foregroundColor: Colors.white,
      elevation: 20,
      shadowColor: Colors.white,
      centerTitle: true,
      //toolbarOpacity: 0.5,
      leading: Icon(
        Icons.star_border,
        color: Colors.white,
      ),
      actions: [
        Icon(
          Icons.edit,
          color: Colors.white,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
      ],
      //toolbarHeight: 90, esto no funciona ya que esta en el override
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(200);
}
