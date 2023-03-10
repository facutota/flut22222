import 'package:flutter/material.dart';

class MyRowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.repeat,
          color: Colors.pink[100],
        ),
        Icon(
          Icons.skip_previous,
          color: Colors.pink[100],
        ),
        Icon(
          Icons.play_arrow,
          color: Colors.pink[100],
        ),
        Icon(
          Icons.skip_next,
          color: Colors.pink[100],
        ),
        Icon(
          Icons.volume_up_rounded,
          color: Colors.pink[100],
        ),
      ],
    );
  }
}
