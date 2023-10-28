class ContactModel {
  int id = 0;
  String nome = "";
  String telefone = "";
  String email = "";

  ContactModel(
      {required this.id,
      required this.nome,
      required this.email,
      required this.telefone});

  ContactModel.create({ required this.nome, required this.telefone, required this.email }) {
    this.id = DateTime.now().millisecondsSinceEpoch;
  }
}
