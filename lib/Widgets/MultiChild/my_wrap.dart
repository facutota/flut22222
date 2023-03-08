import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      spacing: 30,
      runSpacing: 50,
      children: [
        Column(
          children: [
            Text(
              "Hola",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "Hola",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "Hola",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
        Text(
          "Hola",
          style: TextStyle(fontSize: 40),
        ),
        Text(
          "Hola",
          style: TextStyle(fontSize: 40),
        ),
        Text(
          "Hola",
          style: TextStyle(fontSize: 40),
        ),
        Text(
          "Hola",
          style: TextStyle(fontSize: 40),
        ),
        Text(
          "Hola",
          style: TextStyle(fontSize: 40),
        ),
        Text(
          "Hola",
          style: TextStyle(fontSize: 40),
        ),
        Text(
          "Hola",
          style: TextStyle(fontSize: 40),
        ),
        Text(
          "Hola",
          style: TextStyle(fontSize: 40),
        ),
        Text(
          "Hola",
          style: TextStyle(fontSize: 40),
        ),
        Text(
          "Hola",
          style: TextStyle(fontSize: 40),
        ),
      ],
    );
  }
}
