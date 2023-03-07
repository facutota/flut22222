import 'package:flut22222/Common/my_routers.dart';
import 'package:flutter/material.dart';

import 'Pages/login_page.dart';
import 'Pages/my_home_page_cf.dart';

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
      initialRoute: routeLogin,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: LoginPage(),
    );
  }
}
