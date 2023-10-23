import 'package:flutter_avancado_aula1/models/resposta_model.dart';

class PerguntaModel {
  String pergunta = "";
  List<RespostaModel> respostas = [];
  int respostaCorreta = 0;

  PerguntaModel(
      {required this.pergunta,
      required this.respostaCorreta,
      required this.respostas});

  // Vai devolver verdadeiro quando a resposta apresentada for a correta
  bool responder(int resposta) {
    return resposta == respostaCorreta;
  }

  RespostaModel? getRespostaPorId(int id) {
    for (RespostaModel item in respostas)
      if (item.id == id)
        return item;
  }
}
