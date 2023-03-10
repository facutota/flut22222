import 'package:flut22222/Common/home_arguments.dart';
import 'package:flutter/material.dart';

import '../Widgets/Basicos/Actividad/my_app_bar_cf.dart';
import '../Widgets/Basicos/Actividad/my_floating_action_button_cf.dart';
import '../Widgets/Basicos/Actividad/my_image_cf.dart';

class MyHomePageCF extends StatefulWidget {
  const MyHomePageCF({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePageCF> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageCF> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // ignore: prefer_const_constructors

    HomeArguments homeArguments =
        ModalRoute.of(context)!.settings.arguments as HomeArguments;
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: MyFloatingActionButtonCF(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        appBar: MyAppBarCF(homeArguments.title),
        body: Center(
          child: Text(homeArguments.message),
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
