// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController email1Ctrl = TextEditingController();
  TextEditingController password1Ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Text(
                      "Codigo Facilito",
                      style: TextStyle(
                        fontSize: 40,
                        letterSpacing: 5,
                        fontFamily: "Teko",
                        color: Colors.blueGrey,
                      ),
                    ),
                    Stack(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Icon(
                              Icons.my_library_music,
                              color: Colors.pink[100],
                              size: 170,
                            )),
                        Icon(
                          Icons.library_music_outlined,
                          color: Colors.blueGrey,
                          size: 170,
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          controller: email1Ctrl,
                          decoration: decoration(
                            "Email",
                            Icons.email,
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
                        )),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          controller: password1Ctrl,
                          decoration:
                              decoration("Contraseña", Icons.lock_outline),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "la contraseña es necesaria";
                            }
                            return null;
                          },
                          obscureText: true,
                        )),
                    Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: RichText(
                        text: TextSpan(
                            text: "¿Olvidaste tu contraseña? ",
                            style: TextStyle(color: Colors.blueGrey),
                            children: [
                              TextSpan(
                                  text: "Recuperarla",
                                  style: TextStyle(
                                      color: Colors.pink[100],
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline))
                            ]),
                      ),
                    ),
                    SizedBox(
                        //con sized box podemos dar ancho y alto a los widgets
                        width: double.infinity,
                        height: 40,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              elevation: 4,
                              backgroundColor: Colors.pink[100],
                              foregroundColor: Colors.blueGrey,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)))),
                          onPressed: () => save(),
                          child: Text("Guardar"),
                        ))
                  ],
                ))));
  }

  decoration(String text, IconData icon) {
    return InputDecoration(
        labelText: text,
        prefixIcon: Icon(
          icon,
          color: Colors.pink[100],
        ),
        labelStyle: TextStyle(color: Colors.blueGrey),
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.pink.withOpacity(0.3), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.pink.withOpacity(0.3), width: 1)));
  }

  save() {
    if (formKey.currentState!.validate()) {
      print("Email ${email1Ctrl.text}");
      print("Pass ${password1Ctrl.text}");
      formKey.currentState?.reset();
    }
  }
}
