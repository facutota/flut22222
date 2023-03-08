import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
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
          ],
        ));
  }
}
