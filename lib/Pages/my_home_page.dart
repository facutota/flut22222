import 'package:flut22222/Widgets/Basicos/my_icon.dart';
import 'package:flutter/material.dart';

import '../Widgets/Basicos/my_app_bar.dart';
import '../Widgets/Basicos/my_buttons.dart';
import '../Widgets/Basicos/my_floating_action_button.dart';
import '../Widgets/Basicos/my_image.dart';
import '../Widgets/Basicos/my_rich_text.dart';
import '../Widgets/Basicos/my_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // ignore: prefer_const_constructors
    return Scaffold(
        backgroundColor: Colors.brown,
        floatingActionButton: MyFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: MyAppBar(),
        body: const SafeArea(
          child: MyButtons(),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
