import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      //InkWell sirve para hacer onTap en el container
      onTap: () {
        print("Ontap");
      },
      child: Container(
        //color: Colors.pink, cuando usamsos decoration no se puede usar
        //en cointainer ya que dara error
        width: 200,
        height: 200,
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(30),
        child: Text("Hola Mundo"),
        decoration: BoxDecoration(
            color: Colors.amber,
            //borderRadius: BorderRadius.circular(20), para todos los vertices
            // el de abajo es para un solo vertice
            //borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(4, 8),
              ),
            ],
            gradient: LinearGradient(
                colors: [Colors.red, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            image:
                DecorationImage(image: AssetImage("assets/images/cody.jpeg"))),
      ),
    );
  }
}
