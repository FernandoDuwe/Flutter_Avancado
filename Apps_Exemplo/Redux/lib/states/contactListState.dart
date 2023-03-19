import '../models/contactModel.dart';

// Classe imutável que guardará os estados
class ContactListState {
  late List<ContactModel> list;

  ContactListState(this.list);

  int get favoriteCounter {
    int vrCounter = 0;

    list.forEach((element) {
      if (element.favorito) vrCounter++;
    });

    return vrCounter;
  }
}

// Ações permitidas, adicionar ou remover contatos da lista
enum ContactListActionType { Add, Remove, setAsFavorite }

class ContactListAction {
  final ContactModel model;
  final ContactListActionType action;

  ContactListAction(this.model, this.action);
}

// O método reducer é que efetuará as alterações no estado atual
ContactListState contactListReducer(
    ContactListState prContactList, dynamic prAction) {
  if (prAction.action == ContactListActionType.Add) {
    List<ContactModel> vrList = prContactList.list;

    vrList.add(prAction.model);

    return ContactListState(vrList);
  }

  if (prAction.action == ContactListActionType.Remove) {
    List<ContactModel> vrList = prContactList.list;

    for (var i = vrList.length - 1; i >= 0; i--) {
      if (vrList[i].nome == prAction.model.nome) vrList.removeAt(i);
    }

    return ContactListState(vrList);
  }

  if (prAction.action == ContactListActionType.setAsFavorite) {
    List<ContactModel> vrList = prContactList.list;

    for (var i = vrList.length - 1; i >= 0; i--) {
      if (vrList[i].nome == prAction.model.nome)
        vrList[i].favorito = !vrList[i].favorito;
    }

    return ContactListState(vrList);
  }

  return prContactList;
}
