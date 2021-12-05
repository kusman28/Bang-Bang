import 'package:bang_bang/models/Questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Questions> _questionBank = [
    Questions('Putli mandi is made in coconut?', true),
    Questions('Daral is not a Tausug Pastries.', false),
    Questions('Wadjit is a Tausug Pastries.', true),
    Questions('Bang-bang Sug is originally from Tausug Tribe.', true),
    // Questions('A slug\'s blood is green.', true),
    // Questions('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    // Questions('It is illegal to pee in the Ocean in Portugal.', true),
    // Questions(
    //     'No piece of square dry paper can be folded in half more than 7 times.',
    //     false),
    // Questions(
    //     'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
    //     true),
    // Questions(
    //     'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
    //     false),
    // Questions(
    //     'The total surface area of two human lungs is approximately 70 square metres.',
    //     true),
    // Questions('Google was originally called \"Backrub\".', true),
    // Questions(
    //     'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
    //     true),
    // Questions(
    //     'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
    //     true),
  ];

  void getNextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionBank[_questionNumber].question;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
