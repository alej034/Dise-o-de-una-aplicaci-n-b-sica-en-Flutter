import 'package:flutter/material.dart';
import 'package:practica/pages/home.dart';

class inicio extends StatelessWidget {
  const inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Center(
        child: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Color colortexto = Colors.black;

  void cambiarcolor() {
    setState(() {
      colortexto = colortexto == Colors.black ? Colors.green : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 100,
            child: Text(
              'Mobile programming, in the context of programming paradigms, refers to the process of developing software applications for mobile devices such as smartphones, tablets, and wearables.',
              style: TextStyle(color: colortexto),
            )),
        TextButton(onPressed: cambiarcolor, child: Text('cambiar color texto')),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()));
            },
            child: Text('SALIR')),
        SizedBox(height: 20),
      ],
    );
  }
}
