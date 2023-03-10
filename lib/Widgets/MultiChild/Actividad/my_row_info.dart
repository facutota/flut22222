import 'package:flutter/material.dart';

class MyRowInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enero",
              style: TextStyle(
                fontSize: 50,
                letterSpacing: 10,
                fontFamily: "Teko",
                color: Colors.blueGrey,
              ),
            ),
            Text(
              "SHAKIRA",
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 5,
                color: Colors.blueGrey,
                fontFamily: "Teko",
              ),
            )
          ],
        ),
        Icon(
          Icons.favorite_border,
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}
