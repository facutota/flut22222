import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDropDownButtonState();
}

class MyDropDownButtonState extends State<MyDropDownButton> {
  List<String> courses = ["Flutter", "Dart", "Android", "IOS", "REACT"];
  String currentValue = "";

  @override
  void initState() {
    super.initState();
    currentValue = courses[0];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DropdownButton(
      value: currentValue,
      dropdownColor: Colors.amber,
      iconEnabledColor: Colors.red,
      icon: Icon(Icons.music_note),
      items: courses
          .map((String course) =>
              DropdownMenuItem(value: course, child: Text(course)))
          .toList(),
      onChanged: (String? value) {
        if (value != null && currentValue != value) {
          setState(() {
            currentValue = value;
          });
        }
      },
    );
  }
}
