import 'package:flutter/cupertino.dart';

class Questao extends StatelessWidget {
  final String myText;

  const Questao(this.myText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        myText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
