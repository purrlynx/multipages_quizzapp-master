import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 2: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank
  List<Question> _questionBank=[
    Question(q: '1 + 1 = 2', a: true),
    Question(q: 'น้ำเงิน+เขียว = ส้ม', a: false),
    Question(q: 'ทองเป็นอโลหะ', a: false),
    Question(q: 'ไก่เป็นสัตว์', a: true),
    Question(q: 'อะตอมของทุกธาตุมีนิวตรอน', a: false),
    Question(q: 'Man can fly', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}