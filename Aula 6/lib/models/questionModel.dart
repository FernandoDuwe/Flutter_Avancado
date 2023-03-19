class QuestionModel {
  String pergunta = "";
  List<String> respostas = [];
  int respostaCorretaIndex;

  QuestionModel(
      {required this.pergunta,
      required this.respostas,
      required this.respostaCorretaIndex});

  bool isCorrreta(int prIndex) {
    return this.respostaCorretaIndex == prIndex;
  }
}
