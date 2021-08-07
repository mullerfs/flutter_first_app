import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final notaFinal;
  final Function() quandoReiniciar;
  Resultado(this.notaFinal, this.quandoReiniciar);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text('Parabens!\nSua nota: $notaFinal',
              style: TextStyle(fontSize: 30)),
        ),
        TextButton(onPressed: quandoReiniciar, child: Text('Voltar?'))
      ],
    );
  }
}
