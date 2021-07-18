import 'package:qatar22/screens/fan/componants/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question('is that true that leo messi will win the mondial 2022 ?', true),
    Question('Germany will win this mondial like in russia 2018.', false),
    Question('we will see all the start in this mondial .', true),
    Question('you will see your best player in this festival', true),
    Question(
        'this mondial will be the last festival for cristiano ronaldo', true),
    Question('You thing this festival will be great', true),
    Question('Qatar will be all ready for this mondial', false),
    Question('you will watch matchs of mondial Qatar 2022', true),
    Question('You will support your team when you will see it play', false),
  ];

  void NextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }
}
