import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/newsTile.dart';

import '../models/newsModel.dart';

class Exercicio12Sala extends StatelessWidget {
  List<NewsModel> _news = [
    NewsModel(
        id: 1,
        title: "Teste 1",
        subTitle: "Notícia de teste 1",
        body: "Corpo da mensagem de teste 1",
        coverURL:
            "https://imagens.portalzuk.com.br/blog/640/6336107edc681.jpg"),
    NewsModel(
        id: 2,
        title: "Notícia top 2",
        subTitle: "Subtitulo",
        body: "",
        coverURL:
            "https://media.gazetadopovo.com.br/2023/02/23221344/ONU-960x540.jpg"),
    NewsModel(
        id: 3,
        title: "Star Wars",
        subTitle: "Filme de navinha",
        body: "",
        coverURL:
            "https://adrenaline.com.br/uploads/chamadas/star-wars-jedi-survivor-.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercício 12"),
        ),
        body: ListView.builder(
          itemCount: this._news.length,
          itemBuilder: (context, index) => NewsTile(news: this._news[index]),
        ));
  }
}
