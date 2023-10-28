class ContactModel {
  int id = 0;
  String nome = "";
  String telefone = "";
  String email = "";
  bool favorito = false;

  ContactModel(
      {required this.nome, required this.telefone, required this.email});
}
