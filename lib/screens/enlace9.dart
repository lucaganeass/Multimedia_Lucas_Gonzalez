import 'package:flutter/material.dart';


class Enlace9 extends StatelessWidget {
  const Enlace9({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Ejercicio 10'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _decreaseCounter(){
    setState(() {
      _counter--;
    });
  }

  void zeroCounter(){
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final tamanio = MediaQuery.of(context).size;
    final altoPantalla = tamanio.height;
    final anchoPantalla = tamanio.width;
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: anchoPantalla * 0.25, child: ElevatedButton(onPressed: _decreaseCounter, child: Text("Pulsa para restar 1"))),
                SizedBox(width: anchoPantalla * 0.25, child: ElevatedButton(onPressed: zeroCounter, child: Text("Reestablecer"))),
                SizedBox(width: anchoPantalla * 0.25, child: ElevatedButton(onPressed: _incrementCounter, child: Text("Pulsa para sumar 1")))
              ]
            )
            
    
          ],
        ),
      ),
    );
  }
}
