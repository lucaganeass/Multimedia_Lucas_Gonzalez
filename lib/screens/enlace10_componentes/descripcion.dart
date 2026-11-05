import 'package:flutter/rendering.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Descripcion extends StatelessWidget {
  const Descripcion({super.key});

  @override
  Widget build(BuildContext context) {

    final tamanio = MediaQuery.of(context).size;
    final altoPantalla = tamanio.height;
    final anchoPantalla = tamanio.width;
    final Uri _url = Uri.parse('https://mewgenics.wiki.gg/wiki/Chaos!');
    Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('No se pudo lanzar $_url');
    }
  }

    return Column(
        children: [
          Align(alignment: Alignment.centerLeft, child: Text("Gato propiedad de Silvia")),
          Align(alignment: Alignment.centerLeft, child: Text("Protector de casa")),
          Align(alignment: Alignment.centerLeft, child: Text("Hecho en Málaga 🥘")),
          Align(alignment: Alignment.centerLeft, child: Text("Totalmente Real 😺")),
          Align(alignment: Alignment.centerLeft, child: Text("#Gato")),
          Align(alignment: Alignment.centerLeft, child:   InkWell(
              onTap: _launchUrl,
              child: const Text(
                "https://mewgenics.wiki.gg/wiki/Chaos!",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline, // Estilo clásico de enlace
                ),
              ),
            ),
),
          Align(alignment: Alignment.centerLeft, child: Text("Seguidos por AoNoHako, Severance y 22 otros/as")),
          Row(children: [
             SizedBox(
            width: anchoPantalla/4,
            height: anchoPantalla/20,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(color: Colors.black)

            
            ),
          ),
          onPressed: () {},
          child: Text('Seguir', style: TextStyle(
                        color: Colors.black,// Estilo clásico de enlace
                      ),), 
        ),
      ),
      Spacer(),
      SizedBox(
            width: anchoPantalla/4,
            height: anchoPantalla/20,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(color: Colors.black)

            
            ),
          ),
          onPressed: () {},
          child: Text('Mensajes', style: TextStyle(
                        color: Colors.black,
                      ),), 
        ),
      ),
      Spacer(),
      SizedBox(
            width: anchoPantalla/4,
            height: anchoPantalla/20,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(color: Colors.black)

            
            ),
          ),
          onPressed: () {},
          child: Text('Email', style: TextStyle(
                        color: Colors.black,// Estilo clásico de enlace
                      ),), 
        ),
      ),
      Spacer(),
      SizedBox(
            width: anchoPantalla/10,
            height: anchoPantalla/20,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(color: Colors.black)
            ),
          ),
          onPressed: () {},
          child: Text('V', style: TextStyle(
                        color: Colors.black,
                        // Estilo clásico de enlace
                      ),
                      textAlign: TextAlign.center), 
        ),
      ),
      Spacer(),
          ],)
    ]);
  }
}
