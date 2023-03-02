import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return RichText(
        text: const TextSpan(
            text: "¿Tienes una cuenta? ",
            style: TextStyle(color: Colors.amber, fontSize: 20),
            children: [
          TextSpan(
              text: "Inicia Sesion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ))
        ]));
  }
}
