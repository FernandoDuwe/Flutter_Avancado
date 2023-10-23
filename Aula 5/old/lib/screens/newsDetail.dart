import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/models/newsModel.dart';

class NewsDetail extends StatelessWidget {
  final NewsModel news;

  const NewsDetail({required this.news, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(onPressed: () {

            }, icon: Icon(Icons.share))
          ],
        ),
        extendBodyBehindAppBar: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.share),
        ),
        body: Column(
          children: [
            Flexible(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Hero(
                  tag: this.news.id,
                  child: Image(
                    image: NetworkImage(this.news.coverURL),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              flex: 1,
            ),
            Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Text(this.news.title),
                    Text(this.news.subTitle),
                    Text(this.news.body)
                  ],
                ))
          ],
        )
        /*ListView(
          children: [
            Container(
                height: 400,
                width: double.infinity,
                child: Hero(
                  tag: this.news.id,
                  child: Image(
                    image: NetworkImage(this.news.coverURL),
                    fit: BoxFit.cover,
                  ),
                )),
            ListTile(
              leading: Icon(Icons.newspaper),
              title: Text(this.news.title),
              subtitle: Text(this.news.subTitle),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(this.news.body),
            )
          ],
        )
         */
        );
  }
}
