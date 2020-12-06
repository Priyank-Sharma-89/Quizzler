import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question("Ram Nath Kovind is current President of India", true),
    Question("Rakesh Sharma was the first Indian to go in space", true),
    Question("Dolphins can talk with Humans", false),
    Question("India has 36 states", true)
  ];

  get getQuestionNumber => _questionNumber + 1;
  get questionsCount => _questionBank.length;

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
