import 'package:flutter/material.dart';
import 'package:quiz/Question.dart';

void main() => runApp(Quizler());

class Quizler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Quiz(),
          ),
        ),
      ),
    );
  }
}

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //TODO: Lista Vazia de Icones
  List<Icon> scoreKeeper = [];
  //TODO: Lista de Perguntas
  List<Question> question = [
    Question('Angola tornou-se verdadeiro 15/Fev/1987 ?', false),
    Question('Capital de Cuando Cubango e Menongue. ?', true),
    Question('Capital de Angola e Lubango?', false),
    Question('Agostinho Neto, primeiro presidente de Angola ?', true),
  ];

  //Vai Guardar Onde Estamos Na Nossa Lista
  int questionNumer = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //Perguntas
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question[questionNumer].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                bool correctAnswer = question[questionNumer].questionAnswer;
                if (correctAnswer == true) {
                  print("Right");
                } else {
                  print("Wrong");
                }
                setState(() {
                  questionNumer++;
                });
              },
              child: Text(
                "Verdadeiro",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {
                bool correctAnswer = question[questionNumer].questionAnswer;
                if (correctAnswer == false) {
                  print("Right");
                } else {
                  print("Wrong");
                }
                setState(() {
                  questionNumer++;
                });
              },
              child: Text(
                "Falso",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
