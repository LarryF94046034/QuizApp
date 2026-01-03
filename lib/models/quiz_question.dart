class QuizQuestion {
  //建構子傳參
  const QuizQuestion(this.text, this.answers);

  //問題
  final String text;

  //答案
  final List<String> answers;

  //傳回打亂順序的答案
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
