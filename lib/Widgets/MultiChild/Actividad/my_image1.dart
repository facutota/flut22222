import 'package:flutter/material.dart';

class MyImage1 extends StatelessWidget {
  const MyImage1({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Image(
      image: AssetImage("assets/images/qqqqqq.png"),
      width: 300,
      height: 300,
      fit: BoxFit.fitWidth,
      //color: Colors.redAccent,
      /*errorBuilder:
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
        }*/
    );
  }
}
