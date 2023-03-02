import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

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
      backgroundColor: Colors.white,
      foregroundColor: Colors.amber,
      elevation: 20,
      tooltip: "Agregar Usuario",
    );
  }
}
