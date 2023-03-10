import 'package:flut22222/Widgets/MultiChild/Actividad/my_row_buttons.dart';
import 'package:flut22222/Widgets/MultiChild/Actividad/my_row_info.dart';
import 'package:flut22222/Widgets/MultiChild/Actividad/my_stack_shak.dart';
import 'package:flutter/material.dart';

class MyColumnShak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MyStackShak(),
        MyRowInfo(),
        Text(
          "00:05",
          style: TextStyle(
            fontSize: 40,
            letterSpacing: 10,
            fontFamily: "Teko",
            color: Colors.blueGrey,
          ),
        ),
        MyRowButtons()
      ],
    );
  }
}
