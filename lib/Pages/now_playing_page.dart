import 'package:flut22222/Pages/my_home_page_cf.dart';
import 'package:flut22222/Widgets/Form/my_drop_down_button.dart';
import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_card.dart';
import 'package:flut22222/Widgets/MultiChild/Actividad/my_column_shak.dart';
import 'package:flutter/material.dart';

import '../Widgets/Form/my_date_picker.dart';
import '../Widgets/Form/my_form.dart';
import '../Widgets/Form/my_radio.dart';
import '../Widgets/Form/my_switch.dart';
import '../Widgets/Form/my_text_field.dart';
import '../Widgets/ListViewAndGridView/Actividad/play_list_view.dart';
import '../Widgets/ListViewAndGridView/Items/my_container.dart';
import '../Widgets/ListViewAndGridView/Items/my_list_tile.dart';
import '../Widgets/ListViewAndGridView/my_grid_view.dart';
import '../Widgets/ListViewAndGridView/my_list_view.dart';
import '../Widgets/ListViewAndGridView/my_list_view_button_delete.dart';
import '../Widgets/ListViewAndGridView/my_list_view_button_delete_global_key.dart';
import '../Widgets/ListViewAndGridView/my_list_view_container.dart';
import '../Widgets/ListViewAndGridView/my_list_view_delete.dart';
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
      body: SafeArea(child: MyForm()),
    );
  }
}
