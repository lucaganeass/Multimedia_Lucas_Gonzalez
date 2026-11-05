import 'package:flutter/material.dart';


class Fotos extends StatelessWidget {
  const Fotos({super.key});


  @override
  Widget build(BuildContext context) {

    final tamanio = MediaQuery.of(context).size;
    final altoPantalla = tamanio.height;
    final anchoPantalla = tamanio.width;
  
    return 
    Expanded(child: GridView.count(
  primary: false,
  crossAxisCount: 3,
  children: <Widget>[
    Image(image: AssetImage("assets/images/yourName.png"),),
    Image(image: AssetImage("assets/images/invite.png"),),
    Image(image: AssetImage("assets/images/primetime.png"),),
    Image(image: AssetImage("assets/images/nathan.png"),),
    Image(image: AssetImage("assets/images/miasma.png"),),

  ],
)
      );


  }
}
