import 'package:mobx/mobx.dart';
import 'package:mobx_contatos/models/contactModel.dart';
part 'contactStore.g.dart';

class ContactStore = _ContactStore with _$ContactStore;

abstract class _ContactStore with Store {
  @observable
  ContactModel model = ContactModel(nome: "");

  @computed
  String get nome => this.model.nome;

  @computed
  bool get favorito => this.model.favorito;

  @action
  void setName(String prNome) {
    this.model.nome = prNome;
  }

  @action
  void setFavorite(bool prFavorite) {
    this.model = ContactModel(nome: this.model.nome);
    this.model.favorito = prFavorite;
  }
}