class TripModel {
  String destino = "";
  String descricao = "";
  String imageUrl = "";
  String text = "";
  double custo = 0.0;

  TripModel(
      {required this.destino,
      required this.descricao,
      required this.text,
      required this.imageUrl,
      required this.custo});
}
