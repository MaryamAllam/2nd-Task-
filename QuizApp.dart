import 'dart:io';

class mathQuestion {
  String question;
  double answer;
  mathQuestion({
    required this.question,
    required this.answer,
  });
}

getanswer(String msg) {
  print("\nQ/ $msg?");
  var answer = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  return answer;
}

void main(List<String> args) {
  var questions = [
    mathQuestion(question: "12+8", answer: 20.0),
    mathQuestion(question: "8-3", answer: 5.0),
    mathQuestion(question: "5*100", answer: 500.0),
  ];
  for (var item in questions) {
    var useranswer = getanswer(item.question);
    print("Your answer is : $useranswer");
    if (useranswer == item.answer) {
      print("Correct!");
    } else {
      print("Incorrect ,the answer is ${item.answer}");
    }
  }
  print("__________________");
}
