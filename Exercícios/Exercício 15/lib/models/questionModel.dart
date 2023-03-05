class QuestionModel {
  String question = "";
  int correctResponse = 0;
  List<String> options = [];

  QuestionModel(this.question, this.correctResponse, this.options);

  bool corretAnswer(int prIndex) {
    return this.correctResponse == prIndex;
  }
}