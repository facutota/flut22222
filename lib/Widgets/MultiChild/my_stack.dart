import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.bottomLeft,
      fit: StackFit.loose,
      children: [
        Image.asset("assets/images/cody.jpeg"),
        //Positioned(
        // right: 10,
        //bottom: 10,
        //child:
        Icon(
          Icons.close,
          color: Colors.red,
          size: 50,
        ) //)
      ],
    );
  }
}
