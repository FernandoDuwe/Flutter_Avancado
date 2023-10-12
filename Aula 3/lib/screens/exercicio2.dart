import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/trip_model.dart";
import "package:flutter_avancado_aula1/widgets/trip_tile.dart";

class Exercicio2 extends StatelessWidget {
  Exercicio2({super.key});

  final List<TripModel> trips = [
    TripModel(
        destino: "São Paulo",
        descricao: "Hospedagem + aereo",
        text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet tellus efficitur, malesuada risus et, porta tortor. Proin nec magna pharetra, posuere eros vel, finibus ipsum. Aliquam erat volutpat. Duis condimentum turpis eget nulla viverra malesuada. Vestibulum lorem libero, pellentesque sit amet dignissim sit amet, dictum fringilla neque. Maecenas ac lorem sit amet felis vestibulum volutpat. Praesent convallis lectus ligula, non iaculis elit porttitor in. Sed dapibus convallis sem sed facilisis. Nunc ut ipsum nunc. Suspendisse lobortis non ex at semper. Pellentesque eleifend eleifend volutpat. Ut sed ante eget odio accumsan vestibulum.",
        imageUrl:
            "https://visitbrasil.com/wp-content/uploads/2021/06/GettyImages-1166728645-1.jpg",
        custo: 5.200),
    TripModel(
        destino: "Ouro Preto",
        descricao: "Pão de queijo e aereo",
        text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet tellus efficitur, malesuada risus et, porta tortor. Proin nec magna pharetra, posuere eros vel, finibus ipsum. Aliquam erat volutpat. Duis condimentum turpis eget nulla viverra malesuada. Vestibulum lorem libero, pellentesque sit amet dignissim sit amet, dictum fringilla neque. Maecenas ac lorem sit amet felis vestibulum volutpat. Praesent convallis lectus ligula, non iaculis elit porttitor in. Sed dapibus convallis sem sed facilisis. Nunc ut ipsum nunc. Suspendisse lobortis non ex at semper. Pellentesque eleifend eleifend volutpat. Ut sed ante eget odio accumsan vestibulum.",
        imageUrl: "https://cdn.temporadalivre.com/blog-media/posts/cover/10984/size_800_conheca-os-segredos-do-centro-historico-de-ouro-preto-eca9c0cc.jpg",
        custo: 3.500)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 2"),
      ),
      body: ListView.builder(
        itemCount: trips.length,
        itemBuilder: (context, index) {
          return TripTile(tripModel: trips[index]);
        },
      ),
    );
  }
}
