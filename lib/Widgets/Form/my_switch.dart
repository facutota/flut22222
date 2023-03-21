import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MySwitchState();
}

class MySwitchState extends State<MySwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return SwitchListTile(
      title: Text(isSwitched ? "On" : "Off"),
      value: isSwitched,
      activeTrackColor: Colors.amber,
      activeColor: Colors.brown,
      onChanged: (value) => onChanged(value),
    );
  }

  onChanged(value) {
    setState(() {
      isSwitched = value;
    });
  }
}
