import 'package:flut22222/Pages/play_list_page.dart';
import 'package:flutter/material.dart';

import '../../Common/my_routers.dart';

class MyFloatingActionButtonCF extends StatelessWidget {
  const MyFloatingActionButtonCF({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return FloatingActionButton(
      onPressed: () {
        // Navigator.popAndPushNamed(context, routePlayList);
        Navigator.pushNamedAndRemoveUntil(
            context, routePlayList, (route) => false);
      },
      child: Icon(
        Icons.add,
        size: 40,
      ),
      backgroundColor: Color.fromARGB(255, 255, 166, 0),
      foregroundColor: Colors.white,
      elevation: 20,
      tooltip: "Agregar Usuario",
    );
  }
}
