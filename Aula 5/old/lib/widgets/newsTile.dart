import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/models/newsModel.dart';
import 'package:flutter_avancado_aula4/screens/newsDetail.dart';

class NewsTile extends StatelessWidget {
  final NewsModel news;

  const NewsTile({required this.news, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NewsDetail(news: this.news),
      )),
      leading: Hero(
        tag: this.news.id,
        child: Image(
          image: NetworkImage(this.news.coverURL),
        ),
      ),
      title: Text(this.news.title),
      subtitle: Text(this.news.subTitle),
    );
  }
}
