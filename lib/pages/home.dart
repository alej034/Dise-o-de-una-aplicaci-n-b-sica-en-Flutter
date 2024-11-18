import 'package:flutter/material.dart';
import 'package:practica/pages/incio.dart';

class home extends StatelessWidget {
  const home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(
          ' BIEN VENIDO',
          style: TextStyle(fontSize: 30, color: Colors.orange),
        ),
        Image(
            image: NetworkImage(
                'https://duyal.es/wp-content/uploads/2018/06/movil1.png')),
        contador(),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => inicio()));
            },
            child: Text('INICIAR'))
      ]),
    );
  }
}

class contador extends StatefulWidget {
  @override
  widgetContador createState() => widgetContador();
}

class widgetContador extends State<contador> {
  int contador = 0;

  void aumetarContador() {
    setState(() {
      contador++;
    });
  }

  void disminuirContador() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contador: $contador',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: disminuirContador,
              child: Text('-'),
            ),
            ElevatedButton(
              onPressed: aumetarContador,
              child: Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
