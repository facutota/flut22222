import 'package:flutter/material.dart';

class MyImageCF extends StatelessWidget {
  const MyImageCF({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Image(
        image: NetworkImage(
            "https://dmhenaopa.github.io/vacaciones-cody/images/cody_completo.png"),
        height: 200,
        fit: BoxFit.cover,
        //color: Colors.redAccent,
        errorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          // Appropriate logging or analytics, e.g.
          // myAnalytics.recordError(
          //   'An error occurred loading "https://example.does.not.exist/image.jpg"',
          //   exception,
          //   stackTrace,
          // );
          //return const Text("error al cargar la imagen");
          return Image.asset(
            "assets/images/cody.jpeg",
            width: 200,
          );
        });
  }
}
