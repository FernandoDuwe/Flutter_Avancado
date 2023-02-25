import 'package:flutter/material.dart';
import 'package:flutter_avancado/screens/newsDetail.dart';

import '../models/newsModel.dart';

class Exercicio12 extends StatefulWidget {
  const Exercicio12({Key? key}) : super(key: key);

  @override
  State<Exercicio12> createState() => _Exercicio12State();
}

class _Exercicio12State extends State<Exercicio12> {
  List<NewsModel> _news = [
    NewsModel(
        1,
        "Congresso tem 34 propostas ligadas a ataques golpistas do 8 de janeiro",
        "Deputados são autores de 22 sugestões; no Senado, há 12 propostas",
        "https://imagens.portalzuk.com.br/blog/640/6336107edc681.jpg",
        "Lorem ipsum dolor sit amet. Et galisum sint quo molestiae cupiditate aut animi quia. Eos voluptas voluptate a neque galisum vel dolorem voluptas rem eveniet error quo ipsum nulla! Et ipsa totam eum alias omnis sit veritatis quia et nihil dolore qui magnam expedita."),
    NewsModel(2,
        "Flutter é top demais, diz ONU",
        "Os caras mandaram essa, lançaram a braba",
        "https://media.gazetadopovo.com.br/2023/02/23221344/ONU-960x540.jpg",
        "Lorem ipsum dolor sit amet. Et galisum sint quo molestiae cupiditate aut animi quia. Eos voluptas voluptate a neque galisum vel dolorem voluptas rem eveniet error quo ipsum nulla! Et ipsa totam eum alias omnis sit veritatis quia et nihil dolore qui magnam expedita."),
    NewsModel(3,
        "Star Wars Jedi: Survivor: confira exploração no mundo aberto do jogo em novo trailer",
        "Game oferece mapas maiores com exploração por montarias",
        "https://adrenaline.com.br/uploads/chamadas/star-wars-jedi-survivor-.jpg",
        "Lorem ipsum dolor sit amet. Et galisum sint quo molestiae cupiditate aut animi quia. Eos voluptas voluptate a neque galisum vel dolorem voluptas rem eveniet error quo ipsum nulla! Et ipsa totam eum alias omnis sit veritatis quia et nihil dolore qui magnam expedita. Lorem ipsum dolor sit amet. Et galisum sint quo molestiae cupiditate aut animi quia. Eos voluptas voluptate a neque galisum vel dolorem voluptas rem eveniet error quo ipsum nulla! Et ipsa totam eum alias omnis sit veritatis quia et nihil dolore qui magnam expedita. Lorem ipsum dolor sit amet. Et galisum sint quo molestiae cupiditate aut animi quia. Eos voluptas voluptate a neque galisum vel dolorem voluptas rem eveniet error quo ipsum nulla! Et ipsa totam eum alias omnis sit veritatis quia et nihil dolore qui magnam expedita. Lorem ipsum dolor sit amet. Et galisum sint quo molestiae cupiditate aut animi quia. Eos voluptas voluptate a neque galisum vel dolorem voluptas rem eveniet error quo ipsum nulla! Et ipsa totam eum alias omnis sit veritatis quia et nihil dolore qui magnam expedita."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 12"),
      ),
      body: ListView.builder(
        itemCount: this._news.length,
        itemBuilder: (context, index) {
          return ListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NewsDetail(news: this._news[index]),
                  )),
              leading: Hero(
                tag: this._news[index].id,
                child: Image(
                  image: NetworkImage(this._news[index].coverURL),
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(this._news[index].title),
              subtitle: Text(this._news[index].subTitle));
        },
      ),
    );
  }
}
