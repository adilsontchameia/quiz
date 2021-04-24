import 'package:flutter/material.dart';
import 'package:quiz/Question.dart';
import 'package:quiz/quiz_brain.dart';

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
  //Vai Guardar Onde Estamos Na Nossa Lista

  //Objeto de Perguntas
  QuizBrain quizBrain = QuizBrain();

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
                quizBrain.getQuestionText(),
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
                bool correctAnswer = quizBrain.getCorrectAnswer();
                if (correctAnswer == true) {
                  print("Right");
                } else {
                  print("Wrong");
                }
                setState(() {
                  quizBrain.nextQuestion();
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
                bool correctAnswer = quizBrain.getCorrectAnswer();
                if (correctAnswer == false) {
                  print("Right");
                } else {
                  print("Wrong");
                }
                setState(() {
                  quizBrain.nextQuestion();
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
