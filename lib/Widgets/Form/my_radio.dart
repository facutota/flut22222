import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyRadioState();
}

class MyRadioState extends State<MyRadio> {
  String currentValue = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      children: [
        RadioListTile(
            value: "RadioShack",
            title: Text("Soltero"),
            groupValue: currentValue,
            onChanged: (value) {
              onChanged(value);
            }),
        RadioListTile(
            value: "RadioPack",
            title: Text("Casado"),
            groupValue: currentValue,
            onChanged: (value) {
              onChanged(value);
            }),
        Text(currentValue),
      ],
    );
  }

  onChanged(value) {
    setState(() {
      currentValue = value.toString();
    });
  }
}
