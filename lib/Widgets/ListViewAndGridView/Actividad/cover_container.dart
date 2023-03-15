import 'package:flutter/material.dart';

class CoverContainer extends StatelessWidget {
  String image;

  CoverContainer(this.image, {super.key});

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

        decoration: BoxDecoration(

            //color: Colors.amber,
            borderRadius: BorderRadius.circular(30), //para todos los vertices
            // el de abajo es para un solo vertice
            //borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            //shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(112, 206, 191, 191),
                offset: Offset(4, 8),
              ),
            ],
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
