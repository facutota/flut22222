// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController movilCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPassCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: nameCtrl,
              decoration: InputDecoration(
                labelText: "Name",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "el nombre es necesario";
                }
                return null;
              },
            ),
            TextFormField(
              controller: emailCtrl,
              decoration: InputDecoration(
                labelText: "Email",
              ),
              validator: (value) {
                String pattern =
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                RegExp regExp = RegExp(pattern);
                if (value!.isEmpty) {
                  return "El email es necesario";
                } else if (!regExp.hasMatch(value.toString())) {
                  return "Correo invalido";
                }

                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: movilCtrl,
              decoration: InputDecoration(
                labelText: "Movil",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "el telefono es necesario";
                } else if (value.length != 10) {
                  return "el numero de movil debe tener 10 digitos";
                }

                return null;
              },
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              controller: passwordCtrl,
              decoration: InputDecoration(
                labelText: "Password",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "la contraseña es necesaria";
                }
                return null;
              },
              obscureText: true,
            ),
            TextFormField(
              controller: repeatPassCtrl,
              decoration: InputDecoration(
                labelText: "Repeat Password",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "la contraseña es necesaria";
                } else if (value != passwordCtrl.text.toString()) {
                  return "las contraseñas no coinciden";
                }
                return null;
              },
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () => save(),
              child: Text("Guardar"),
            )
          ],
        ));
  }

  save() {
    if (formKey.currentState!.validate()) {
      print("Nombre ${nameCtrl.text}");
      print("Email ${emailCtrl.text}");
      print("Movil ${movilCtrl.text}");
      print("Pass ${passwordCtrl.text}");
      print("Repeat Pass ${repeatPassCtrl.text}");
      formKey.currentState!.reset();
    }
  }
}
