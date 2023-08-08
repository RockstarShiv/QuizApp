class QuizQuestion{
  const QuizQuestion(this.questions,this.answers);

  final String questions;
  final List<String> answers;

  List<String> getShuffledAnswers()
  {
    List<String> shuffledAnswers=List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}