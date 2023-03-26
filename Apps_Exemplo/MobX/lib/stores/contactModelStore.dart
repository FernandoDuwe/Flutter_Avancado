import 'package:mobx/mobx.dart';
import 'package:mobx_example/models/contactModel.dart';
part 'contactModelStore.g.dart';

class ContactModelStore = _ContactModelStore with _$ContactModelStore;

abstract class _ContactModelStore with Store {
  @observable
  ContactModel model = new ContactModel(nome: "", email: "", telefone: "");

  @computed
  bool get favorite => this.model.favorito;

  @action
  void setFavorite(bool prFavorite) {
    this.model = new ContactModel(nome: this.model.nome, email: this.model.email, telefone: this.model.telefone);

    this.model.favorito = prFavorite;
  }
}