import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final List<String> respostas;

  final void Function() onReinicia;

  Result({this.respostas, this.onReinicia});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Parabens!',
            style: TextStyle(fontSize: 28),
          ),
          ...respostas.map((r) => Text(r)),
          FlatButton(
            child: Text(
              'Reiniciar?',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: onReinicia,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
