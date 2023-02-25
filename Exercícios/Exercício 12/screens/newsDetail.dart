import 'package:flutter/material.dart';
import 'package:flutter_avancado/models/newsModel.dart';

class NewsDetail extends StatelessWidget {
  final NewsModel news;

  NewsDetail({required this.news, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.share),
        backgroundColor: Colors.green,
        foregroundColor: Colors.yellow,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
              flex: 1,
              child: Hero(
                tag: this.news.id,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(this.news.coverURL),
                  ),
                ),
              )),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(this.news.title,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(this.news.subTitle,
                      style: TextStyle(color: Colors.black45, fontSize: 12)),
                  SizedBox(height: 30),
                  Text(this.news.text, style: TextStyle(fontSize: 11)),
                ],
              ),
            ),
            flex: 2,
          )
        ],
      ),
    );
  }
}
