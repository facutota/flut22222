import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return const Text(
      "Hola Mundo, Bienvenido a SpyderWeb",
      style: TextStyle(
        color: Colors.red,
        fontSize: 40,
        fontWeight: FontWeight.bold,
        letterSpacing: 5,
        wordSpacing: 20,
        backgroundColor: Colors.black,
        fontFamily: "Montserrat",
        decoration: TextDecoration.underline,
      ),
      textAlign: TextAlign.center,
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
