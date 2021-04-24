import 'Question.dart';

class QuizBrain {
  int _questionNumer = 0;

  //TODO: Lista de Perguntas
  List<Question> _question = [
    Question('Angola Tornou-se Independente Em 15/Fev/1987.', false),
    Question('Capital de Cuando Cubango é Menongue.', true),
    Question('Capital de Angola é Lubango..', false),
    Question('Agostinho Neto, Foi o Primeiro Ministro do Interior ?', false),
    Question('Casa em Inglês, Escreve-se Home.', true),
    Question('Angola Tem 18 Pronvíncias, Sendo Cuando Cubango A Maior.', false),
    Question('Cuito Cuanavale, é a Capital da Provincíncia do Bié.', false),
    Question('Quando Estamos Com Fome, Em Inglês, Dizemos, I´m Hungry.', true),
  ];

//Testando a ultima pergunta
//-1 nao vai chegar a ultima pergunta
  void nextQuestion() {
    if (_questionNumer < _question.length - 1) {
      _questionNumer++;
      print(_question.length);
    }
  }

//Metodos Com Retorno
  String getQuestionText() {
    return _question[_questionNumer].questionText;
  }

  bool getCorrectAnswer() {
    return _question[_questionNumer].questionAnswer;
  }
}
