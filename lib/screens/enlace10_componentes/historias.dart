import 'package:flutter/material.dart';


class Historias extends StatelessWidget {
  const Historias({super.key});


  @override
  Widget build(BuildContext context) {
    final tamanio = MediaQuery.of(context).size;
    final altoPantalla = tamanio.height;
    final anchoPantalla = tamanio.width;
  return Column( children: [SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row( children: [
    Column(children: [
      Container(decoration: BoxDecoration(shape: BoxShape.circle),
          child: 
          CircleAvatar(
            radius: altoPantalla * 0.03,
            backgroundImage: AssetImage("assets/images/verbatim.png"),
          )),
          Text("Verbatim")
  ]),
  Column(children: [
      Container(decoration: BoxDecoration(shape: BoxShape.circle),
          child: 
          CircleAvatar(
            radius: altoPantalla * 0.03,
            backgroundImage: AssetImage("assets/images/aonohako.png"),
          )),
          Text("Caja azul")
  ]),
  Column(children: [
      Container(decoration: BoxDecoration(shape: BoxShape.circle),
          child: 
          CircleAvatar(
            radius: altoPantalla * 0.03,
            backgroundImage: AssetImage("assets/images/chi.webp"),
          )),
          Text("Chinatsu")
  ]),
  Column(children: [
      Container(decoration: BoxDecoration(shape: BoxShape.circle),
          child: 
          CircleAvatar(
            radius: altoPantalla * 0.03,
            backgroundImage: AssetImage("assets/images/olivia.webp"),
          )),
          Text("Olivia")
  ]),
  Column(children: [
      Container(decoration: BoxDecoration(shape: BoxShape.circle),
          child: 
          CircleAvatar(
            radius: altoPantalla * 0.03,
            backgroundImage: AssetImage("assets/images/bullseye.webp"),
          )),
          Text("Bullseye")
  ]),
  Column(children: [
      Container(decoration: BoxDecoration(shape: BoxShape.circle),
          child: 
          CircleAvatar(
            radius: altoPantalla * 0.03,
            backgroundImage: AssetImage("assets/images/bolaNegra.jpg"),
          )),
          Text("Bola Negra")
  ]),
  Column(children: [
      Container(decoration: BoxDecoration(shape: BoxShape.circle),
          child: 
          CircleAvatar(
            radius: altoPantalla * 0.03,
            backgroundImage: AssetImage("assets/images/residentEvil.png"),
          )),
          Text("RE")
  ]),
   Column(children: [
      Container(decoration: BoxDecoration(shape: BoxShape.circle),
          child: 
          CircleAvatar(
            radius: altoPantalla * 0.03,
            backgroundImage: AssetImage("assets/images/guts.png"),
          )),
          Text("Guts")
  ])
  ],
)),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
    Icon(
              	Icons.access_time,
              	color: Colors.black,
        	      	size: altoPantalla * 0.05,
            	),
            	Icon(
              	Icons.add_a_photo,
              	color: Colors.black,
              	size: altoPantalla * 0.05,
            	),
            	Icon(
              	Icons.account_circle_rounded,
         	   	color: Colors.black,
              	size: altoPantalla * 0.05,
            	),
              Icon(
                Icons.accessibility,
                color: Colors.black,
                size: altoPantalla * 0.05,
              ),
  ],
)
]);
  }
}
