import 'package:flutter/material.dart';
import 'package:flutter_1st_app/answer.dart';
import 'package:flutter_1st_app/question.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario(
      {Key? key,
      required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder})
      : super(key: key);

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((e) {
          return Answer(
            e['texto'].toString(),
            () => responder(int.parse(e['nota'].toString())),
          );
        }).toList()
      ],
    );
  }
}
