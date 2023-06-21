class QuizQuestion {
  const QuizQuestion(this.txt, this.ans);
  final String txt;
  final List<String> ans;

  List<String> getShuffledAnswer() {
    final shuffledList = List.of(ans);
    shuffledList.shuffle();

    return shuffledList;
  }
}
