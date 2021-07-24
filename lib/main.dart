import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual é o seu animal preferido?'
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: Column(
              children: [
                Text(perguntas[0]),
                ElevatedButton(
                    onPressed: responder, child: Text('Resposta 01')),
                ElevatedButton(
                    onPressed: responder, child: Text('Resposta 02')),
                ElevatedButton(onPressed: responder, child: Text('Resposta 03'))
              ],
            )));
  }
}
