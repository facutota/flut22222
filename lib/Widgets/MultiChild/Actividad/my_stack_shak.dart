import 'package:flut22222/Widgets/MultiChild/Actividad/my_image1.dart';
import 'package:flut22222/Widgets/MultiChild/Actividad/my_image2.dart';
import 'package:flutter/material.dart';

class MyStackShak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: [MyImage1(), MyImage2()],
    );
  }
}
