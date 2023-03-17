import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDatePickerState();
}

class MyDatePickerState extends State<MyDatePicker> {
  DateTime initDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ElevatedButton(
        onPressed: () => selectDate(), child: Text(initDate.toString()));
  }

  selectDate() async {
    DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2024),
    );
    if (dateTime != null && initDate != dateTime) {
      setState(() {
        initDate = dateTime;
      });
    }
  }
}
