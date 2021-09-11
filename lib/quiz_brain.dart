import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Electrons move faster than the speed of light.', false),
    Question('Light travels in a straight line.', true),
    Question('A human sneeze can travel about 100 mph or more.', true),
    Question(
        'The largest museum in the world is the State Hermitage Museum (Russia)',
        false),
    Question('South Africa is called African Pearl.', false),
    Question('Istanbul is called the city of mosques', true),
    Question('Los Angeles is called the city of skyscrapers', false),
    Question('Spain is called the door of Europe', true),
    Question(
        'The chemical name of Bleaching powder is Sodium bicarbonate', false),
    Question('Canada and the United States share the longest border', true),
    Question('Water is made up of 1 Hydrogen ions and 2 oxygen ion', false),
    Question('Indonesia is called the land of thousand islands', true),
    Question('Newton is called the father of physics', false),
    Question('Giraffe has the highest blood pressure', true),
    Question('Pablo Picasso was an Italian artist', false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

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
