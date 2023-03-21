// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {
  TextEditingController ctrlName = TextEditingController();
  TextEditingController ctrlLastName = TextEditingController();
  String name = "";
  String lastName = "";
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      children: [
        Text(name),
        Text(lastName),
        TextField(
          focusNode: node1,
          controller: ctrlName,
          autofocus: true, //para que aparezca en este textfield
          keyboardType:
              TextInputType.number, //para cambiar el teclado del movil
          maxLines: 3, //para poner mas lineas a la caja de texto
        ),
        TextField(
          focusNode: node2,
          controller: ctrlLastName,
          autofocus: true, //para que aparezca en este textfield
          keyboardType:
              TextInputType.number, //para cambiar el teclado del movil
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.green),
          maxLength: 5,
          obscureText: true, //para ocultar lo q se puso sirve para contraseña

          decoration: InputDecoration(
            hintText: "Contraseña",
            hintStyle: TextStyle(color: Colors.amber),
            labelText: "Contraseña",
            // icon: Icon(Icons.password), //esta forma lo muestra a un costado del textfield
            prefix: Icon(Icons.password),
            enabled:
                false, //se deshabilito el textField por eso se ve azul el borde y no se puede hacer nada.
            disabledBorder: OutlineInputBorder(
              //este funciona si esta deshabilitado el textField
              borderSide: BorderSide(
                color: Colors.blue,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(30),
            ),

            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.red,
              width: 5,
            )),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.green,
              width: 5,
            )),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              FocusScope.of(context).requestFocus(node2);
              setState(() {
                name = ctrlName.text.toString();
                lastName = ctrlLastName.text.toString();
              });
            },
            child: Text("Guardar"))
      ],
    );
  }
}
