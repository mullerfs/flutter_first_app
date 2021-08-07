import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer(this.texto, this.onSelection);
  final String texto;
  final void Function() onSelection;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(onPressed: onSelection, child: Text(texto)));
  }
}
