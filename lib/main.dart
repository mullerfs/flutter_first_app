import 'package:flutter/material.dart';

main() {
  //runApp(PerguntaApp());
  runApp(MyStatefulWidget());
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

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

String englishGreeting = "Hello Flutter !";
String spanishGreeting = "Hola Flutter !";

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String displayText = englishGreeting;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Investia"),
          leading: Icon(Icons.home),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    displayText = displayText == englishGreeting
                        ? spanishGreeting
                        : englishGreeting;
                  });
                })
          ],
        ),
        body: Center(
            child: Column(
          children: [
            Text(
              displayText,
              style: TextStyle(fontSize: 24),
            ),
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
