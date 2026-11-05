import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/enlace10_componentes/fotos.dart';
import 'package:flutter_application_1/screens/enlace10_componentes/historias.dart';
import 'enlace10_componentes/perfil.dart';
import 'enlace10_componentes/descripcion.dart';

class Enlace10 extends StatelessWidget {
  const Enlace10({super.key});
  

  @override
  Widget build(BuildContext context) {
    final tamanio = MediaQuery.of(context).size;
    final altoPantalla = tamanio.height;
    final anchoPantalla = tamanio.width;
    return Scaffold(
      appBar: AppBar( title: Row(children: [
        Spacer(),
        Text("Ejercicio 11"),
              Icon(
              	Icons.verified,
              	color: Colors.cyan,
        	      	size: 24.0,
            	),
              Spacer(),
                Icon(
              	Icons.more_horiz,
              	color: Colors.black,
        	      	size: 24.0,
            	)],
              
      )),
        body: Center(
            child: Column(children: [
              Perfil(),
              Descripcion(),
              Padding(padding: EdgeInsetsGeometry.all(altoPantalla * 0.03), child: Historias(),),
              Fotos(),
            ],)
        ));
  }
}