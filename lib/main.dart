import 'package:flut22222/Common/my_routers.dart';
import 'package:flut22222/Widgets/MultiChild/Actividad/my_column_shak.dart';
import 'package:flutter/material.dart';

import 'Pages/login_page.dart';
import 'Pages/my_home_page_cf.dart';
import 'Widgets/MultiChild/Actividad/my_home_page_shak.dart';
import 'Widgets/MultiChild/Actividad/my_image2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MyRouters.generateRoute,
      initialRoute: routePlayListViewPage,

      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //home: MyHomePageShak(),
    );
  }
}
