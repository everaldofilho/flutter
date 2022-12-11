import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionary extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) quandoResponder;

  const Questionary({
    required this.perguntaSelecionada,
    required this.perguntas,
    required this.quandoResponder,
  });

  bool get hasQuestion {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        hasQuestion ? perguntas[perguntaSelecionada].cast()['respostas'] : [];

    return Column(children: <Widget>[
      Questao(perguntas[perguntaSelecionada]['texto'].toString()),
      ...respostas
          .map((t) => Resposta(
                t["texto"] as String,
                () => quandoResponder(int.parse(t['pontuacao'].toString())),
              ))
          .toList()
    ]);
  }
}
