import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/widgets/news_tile.dart";

import "../models/news_model.dart";

class Exercicio12 extends StatelessWidget {
  final List<NewsModel> newsList = [
    NewsModel(
        title: "Flutter tem nova versão liberada",
        body: "Saiu uma nova versão pro Flutter....",
        coverImage:
            "https://blog.openreplay.com/images/top-visual-studio-code-extensions-for-flutter-developers/images/hero.png"),
    NewsModel(
        title: "Barragem verte!",
        body: "A barragem verteu",
        coverImage:
            "https://img.nsctotal.com.br/wp-content/uploads/2023/10/barragem-jose-boiteux-4.jpeg"),
    NewsModel(
        title: "Meu vizinho martela",
        body: "Vizinho martelando",
        coverImage:
            "https://static.ferramentaskennedy.com.br/storage/assets/conheca-os-diferentes-tipos-de-martelof025687d4640a235b0380f0e2b708e8a.jpg")
  ];

  Exercicio12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 12"),
      ),
      body: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) =>
              NewsTile(newsModel: newsList[index])),
    );
  }
}
