import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resp;
  final void Function() onPressed;

  const Resposta(this.resp, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
        onPressed: onPressed,
        child: Text(resp),
      ),
    );
  }
}
