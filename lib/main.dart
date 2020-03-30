import 'package:flutter/material.dart';
import 'package:projeto_perguntas/question.dart';
import 'package:projeto_perguntas/result.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  List<String> respostas = [];

  final List<Pergunta> _questions = [
    Pergunta(
        text: 'Qual é a sua cor favorita?',
        answers: ['Azul', 'Vermelho', 'Verde', 'Rosa']),
    Pergunta(
        text: 'Qual é o seu animal favorito?',
        answers: ['Cachorro', 'Gato', 'Passarinho', 'Tartaruga']),
  ];

  int _perguntaSelecionada = 0;

  void _responde(String option) {
    respostas.add(option);
    setState(() {
      if (hasQuestion()) _perguntaSelecionada++;
    });
  }

  bool hasQuestion() {
    return _questions.length > _perguntaSelecionada;
  }

  void reinicia() {
    setState(() {
      _perguntaSelecionada = 0;
      respostas = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergutas'),
        ),
        body: hasQuestion()
            ? Column(
                children: <Widget>[
                  Question(
                    question: _questions[_perguntaSelecionada].pergunta,
                    answers: _questions[_perguntaSelecionada].answers,
                    selected: _responde,
                  )
                ],
              )
            : Result(respostas: respostas, onReinicia: reinicia,),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PerguntaAppState();
  }
}

class Pergunta {
  String _text;
  List<String> _answers;

  Pergunta({String text, List<String> answers}) {
    _text = text;
    _answers = answers;
  }

  List<String> get answers => _answers;

  String get pergunta => _text;
}
