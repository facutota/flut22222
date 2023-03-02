import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return myOutlineButton();
  }

  myElevatedButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            elevation: 20,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white),
        onLongPress: () {
          print("Elevated Button long");
        },
        onPressed: () {
          print("Elevated Button");
        },
        child: Text("Guardar"));
  }

  myElevatedButtonIcon() {
    return ElevatedButton.icon(
      icon: Icon(
        Icons.save,
        color: Colors.red,
      ),
      label: Text("Guardar"),
      style: ElevatedButton.styleFrom(
          shadowColor: Colors.black,
          elevation: 20,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white),
      onLongPress: () {
        print("Elevated Button ICON long");
      },
      onPressed: () {
        print("Elevated Button ICON");
      },
    );
  }

  myTextButton() {
    return TextButton(
        onPressed: () {
          print("YextButton");
        },
        child: Text("Guardar"));
  }

  myOutlineButton() {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.red, width: 4),
            foregroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: () {
          print("OutloneButton");
        },
        child: Text("Guardar"));
  }
}
