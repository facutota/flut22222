import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Image(
        image: NetworkImage(
            "https://vatars.githubusercontent.com/u/10576462?s=280&v=4"),
        width: 200,
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
            "assets/images/androidito.png",
            width: 200,
            color: Colors.white,
          );
        });
  }
}
