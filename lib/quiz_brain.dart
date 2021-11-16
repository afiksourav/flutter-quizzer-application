import 'question.dart';
class QurizBrain{
    int _questionNumber = 0;
   final List<Question> _questionBank = [
      Question(questionText: 'You can lead a cow down stairs but not up stairs',  questionAnswer: false),
      Question(questionText: 'bangladesh',  questionAnswer: true),
      Question(questionText: 'indian',  questionAnswer: true),
      Question(questionText: 'afik',  questionAnswer: false),
      Question(questionText: 'emon', questionAnswer: true),
      Question(questionText: 'indian',  questionAnswer: true),
      Question(questionText: 'computer',  questionAnswer: false),
      Question(questionText: 'bangladesh',  questionAnswer: true),
      Question(questionText: 'football',  questionAnswer: true),
   ];

  void nextQuestion(){
    if(_questionNumber< _questionBank.length-1){
      _questionNumber++;
    }
  }
   String getQuestionText(){
     return _questionBank[_questionNumber].questionText;
   }
   bool getCorrectAnswer(){
     return _questionBank[_questionNumber].questionAnswer;
   }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
