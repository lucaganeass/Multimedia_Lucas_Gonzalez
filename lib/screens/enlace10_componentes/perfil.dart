import 'package:flutter/material.dart';


class Perfil extends StatelessWidget {
  const Perfil({super.key});


  @override
  Widget build(BuildContext context) {

    final tamanio = MediaQuery.of(context).size;
    final altoPantalla = tamanio.height;
    final anchoPantalla = tamanio.width;
  
    return Row(
        children: [
          Container(decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(width: 5, color: Colors.purpleAccent)),
          child: 
          CircleAvatar(
            radius: altoPantalla * 0.06,
            backgroundImage: AssetImage("assets/images/gato.png"),
          )),
          Spacer(),
          Column(children: [
            Text("7,850", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text("publicaciones")
          ],),
          Spacer(),
          Column(children: [
            Text("58", style: TextStyle(fontWeight: FontWeight(1000), fontSize: 17)),
            Text("seguidores")
          ],),
          Spacer(),
          Column(children: [
            Text("275", style: TextStyle(fontWeight: FontWeight(1000), fontSize: 17)),
            Text("seguidos")
          ],),
          Spacer()

        ],
    );
  }
}
