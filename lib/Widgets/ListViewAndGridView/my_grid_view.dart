import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_card.dart';
import 'package:flut22222/Widgets/ListViewAndGridView/Items/my_container.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, esta clase sirve para poner la cantidad de columnas que queremos
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 40,
          mainAxisSpacing: 30),
      //physics:
      //NeverScrollableScrollPhysics(), //esto desactiva el scroll se usa cuando hay un scroll principal y se desactiva el secundario
      itemBuilder: (context, index) => MyCard(),
      itemCount: 5, //cantidad de elemento de Card
    );

    /* GridView de manera estatica
    GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, esta clase sirve para poner la cantidad de columnas que queremos
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 40,
          mainAxisSpacing: 30),
      physics:
          NeverScrollableScrollPhysics(), //esto desactiva el scroll se usa cuando hay un scroll principal y se desactiva el secundario
      children: [
        MyCard(),
        MyContainer(),
        MyCard(),
        MyContainer(),
        MyCard(),
        MyContainer(),
        MyCard(),
        MyContainer(),
        MyCard(),
        MyContainer(),
        MyCard(),
        MyContainer(),
      ],
    );*/
  }
}
