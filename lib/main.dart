import 'package:flutter/material.dart';

main() =>  runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergutas'),
        ),
        body: Text('Olá Flutter!'),
      ),
    );
  }
}
