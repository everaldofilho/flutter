import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/finish.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/questionary.dart';
import 'package:projeto_perguntas/resposta.dart';

main() {
  runApp(PerguntaApp());
}

const title = "Perguntas";
const body = "teste";

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final perguntas = [
    {
      'texto': "Qual é o seu animal favorito?",
      'respostas': [
        {"texto": "Cachorro", "pontuacao": 5},
        {"texto": "Cobra", "pontuacao": 4},
        {"texto": "Elefante", "pontuacao": 3},
        {"texto": "Leão", "pontuacao": 2},
      ],
    },
    {
      'texto': "Qual é sua cor favorita?",
      'respostas': [
        {"texto": "Preto", "pontuacao": 7},
        {"texto": "branco", "pontuacao": 1},
      ],
    },
    {
      'texto': "Qual é seu instrutor favorito?",
      'respostas': [
        {"texto": "Maria", "pontuacao": 4},
        {"texto": "João", "pontuacao": 3},
        {"texto": "Lucas", "pontuacao": 2},
      ],
    },
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  void _reiniciar() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get hasQuestion {
    return _perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: hasQuestion
          ? Questionary(
              perguntaSelecionada: _perguntaSelecionada,
              perguntas: perguntas,
              quandoResponder: _responder,
            )
          : Finish(_pontuacaoTotal, _reiniciar),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
