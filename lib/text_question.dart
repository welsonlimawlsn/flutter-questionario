import 'package:flutter/material.dart';

class TextQuestion extends StatelessWidget {

  String text;

  TextQuestion({this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 28),
      ),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      alignment: Alignment.center,
    );
  }
}
