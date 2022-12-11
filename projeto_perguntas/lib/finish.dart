import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  final int pontuacaoTotal;

  final void Function() quandoReiniciar;

  Finish(this.pontuacaoTotal, this.quandoReiniciar);

  String get fraseResultado {
    if (pontuacaoTotal < 8) {
      return 'Parabéns!';
    } else if (pontuacaoTotal < 12) {
      return "Você é bom!";
    } else if (pontuacaoTotal < 12) {
      return "Impressionante!";
    } else {
      return "nivel Jedi!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseResultado, style: TextStyle(fontSize: 28)),
        ),
        TextButton(onPressed: this.quandoReiniciar, child: Text("Reiniciar"))
      ],
    );
  }
}
