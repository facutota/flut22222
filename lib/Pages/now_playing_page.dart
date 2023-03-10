import 'package:flut22222/Pages/my_home_page_cf.dart';
import 'package:flut22222/Widgets/MultiChild/Actividad/my_column_shak.dart';
import 'package:flutter/material.dart';

import '../Widgets/MultiChild/my_column.dart';
import '../Widgets/MultiChild/my_row.dart';
import '../Widgets/MultiChild/my_stack.dart';
import '../Widgets/MultiChild/my_wrap.dart';

class NowPlayingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NowPlayingPageState();
}

class NowPlayingPageState extends State<NowPlayingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(child: MyColumnShak()),
    );
  }
}
