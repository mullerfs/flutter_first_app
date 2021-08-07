import 'package:flutter/material.dart';
import 'package:flutter_1st_app/questionario.dart';
import 'package:flutter_1st_app/resultado.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var _notaTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'resposta': [
        {'texto': 'azul', 'nota': 10},
        {'texto': 'verde', 'nota': 7},
        {'texto': 'vermelho', 'nota': 5},
      ]
    },
    {
      'texto': 'Qual é o seu animal preferido?',
      'resposta': [
        {'texto': 'cachorro', 'nota': 10},
        {'texto': 'gato', 'nota': 2},
        {'texto': 'carcará', 'nota': 8},
      ]
    }
  ];

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < _perguntas.length;
  }

  void _responder(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        _notaTotal += nota;
      });
    }

    print(perguntaSelecionada);
    print('nota total: $_notaTotal');
    print('Pergunta respondida');
  }

  void _reiniciarQuestionario() {
    setState(() {
      perguntaSelecionada = 0;
      _notaTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: temPerguntaSelecionada
                ? Questionario(
                    perguntas: _perguntas,
                    perguntaSelecionada: perguntaSelecionada,
                    responder: _responder)
                : Resultado(_notaTotal, _reiniciarQuestionario)));
  }
}


/*

Questao(perguntas[_perguntaSelecionada]['texto'].toString()),

for (String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textoResp, _responder));
    }

*/