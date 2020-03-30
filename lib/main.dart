import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() =>  runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

  final pergutas = [
    'Qual é a sua cor favorita?',
    'Qual é a seu animal favorito?'
  ];

  void responde() {
    print('Respondeu');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergutas'),
        ),
        body: Column(
          children: <Widget>[
            Text(pergutas[0]),
            RaisedButton(
              onPressed: () {
                print("Azul");
              },
              child: Text('Azul'),
            ),
            RaisedButton(
              onPressed: responde,
              child: Text('Branco'),
            ),
            RaisedButton(
              onPressed: () => print('Cinza'),
              child: Text('Cinza'),
            )
          ],
        ),
      ),
    );
  }
}
