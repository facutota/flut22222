import 'package:flutter/material.dart';

class MyFloatingActionButtonCF extends StatelessWidget {
  const MyFloatingActionButtonCF({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return FloatingActionButton(
      onPressed: () {
        print("MyFloatingActionButton");
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
