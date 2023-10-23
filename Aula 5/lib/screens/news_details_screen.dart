import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/news_model.dart";

class NewsDetailsScreen extends StatelessWidget {
  final NewsModel newsModel;

  const NewsDetailsScreen({required this.newsModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Hero(
            tag: newsModel.coverImage,
            child: Container(
              height: 300,
              width: double.infinity,
              child: Image.network(newsModel.coverImage,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 30,
            alignment: Alignment.centerLeft,
            child: Text(newsModel.title),
            width: double.infinity,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(newsModel.body),
          )
        ],
      ),
    );
  }
}
