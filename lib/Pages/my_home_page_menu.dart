// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flut22222/Common/home_arguments.dart';
import 'package:flut22222/Widgets/Menu/Fragments/my_home.dart';
import 'package:flut22222/Widgets/Menu/Fragments/my_profile.dart';
import 'package:flut22222/Widgets/Menu/Fragments/my_setting.dart';
import 'package:flutter/material.dart';

import '../Widgets/Basicos/Actividad/my_app_bar_cf.dart';
import '../Widgets/Basicos/Actividad/my_floating_action_button_cf.dart';
import '../Widgets/Basicos/Actividad/my_image_cf.dart';
import '../Widgets/Basicos/my_app_bar.dart';
import '../Widgets/Basicos/my_app_bar_menu.dart';
import '../Widgets/Basicos/my_buttons.dart';
import '../Widgets/Basicos/my_floating_action_button.dart';
import '../Widgets/Menu/my_bottom_navigator_bar.dart';
import '../Widgets/Menu/my_drawer.dart';

class MyHomePageMenu extends StatefulWidget {
  const MyHomePageMenu({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePageMenu> createState() => MyHomePageMenuState();
}

class MyHomePageMenuState extends State<MyHomePageMenu> {
  List fragments = [
    MyHome(),
    MyProfile(),
    MySetting(),
  ];

  int currentIndex = 0;

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
        drawer: MyDrawer(),
        bottomNavigationBar: MyBottomNavigatorBar(onTab, currentIndex),
        backgroundColor: Colors.brown,
        floatingActionButton: MyFloatingActionButton(bottomSheet),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: MyAppBarMenu(),
        body: fragments[currentIndex]
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Compartir"),
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Copiar Link"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Enviar"),
              ),
            ],
          );
        });
  }

  onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
