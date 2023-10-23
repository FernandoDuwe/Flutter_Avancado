import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/news_model.dart";
import "package:flutter_avancado_aula1/screens/news_details_screen.dart";

class NewsTile extends StatelessWidget {
  final NewsModel newsModel;

  const NewsTile({required this.newsModel, super.key});

  @override
  Widget build(BuildContext context) {
    String newsBody = newsModel.body;

    if (newsBody.length > 30)
      newsBody = newsBody.substring(0, 30);

    return ListTile(
      leading: Hero(
        tag: newsModel.coverImage,
        child: Image.network(newsModel.coverImage,
            height: 64, width: 64, fit: BoxFit.cover),
      ),
      title: Text(newsModel.title),
      subtitle: Text(newsBody),
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewsDetailsScreen(newsModel: newsModel),)),
    );
  }
}
