import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
        onTap: () {
          print("Hola Card");
        },
        onTapDown: (TapDownDetails downDetails) {
          print(
              "OnTapDown esta presionando el boton ${downDetails.globalPosition}");
        },
        onTapUp: (TapUpDetails upDetails) {
          print("On Up Solto el card ${upDetails.localPosition}");
        },
        child: Card(
          elevation: 30,
          margin: EdgeInsets.all(30),
          color: Colors.red,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(
                color: Colors.blue,
                width: 5,
              )),
          shadowColor: Colors.amber,
          child: Text(
            "Hola Mundo",
            style: TextStyle(fontSize: 50),
          ),
        ));
  }
}
