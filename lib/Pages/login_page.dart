import 'package:flut22222/Common/home_arguments.dart';
import 'package:flut22222/Common/my_routers.dart';
import 'package:flut22222/Common/home_arguments.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          child: Text("MyHomePageCF"),
          onPressed: () => {
            Navigator.pushNamed(context, routeHome,
                arguments: HomeArguments("Inicio", "Hola Mundo"))
          },
        ),
      ),
    );
  }
}
