import '../models/contactModel.dart';

class ContactState {
  int _internalID = 0;
  List<ContactModel> _contactList = [];

  ContactState(this._contactList);

  int get contadorFavoritos {
    int vrContador = 0;

    this
        ._contactList
        .forEach((element) => vrContador += (element.favorito ? 1 : 0));

    return vrContador;
  }

  int get contatosCounter => this._contactList.length;

  ContactModel getContact(int prIndex) => this._contactList[prIndex];

  void addContact(ContactModel prModel) {
    prModel.id = this._internalID;

    this._internalID++;

    this._contactList.add(prModel);
  }

  void removeContact(ContactModel prModel) {
    for (int i = this._contactList.length - 1; i >= 0; i--)
      if (this.getContact(i).id == prModel.id)
        this._contactList.removeAt(i);
  }

  void setarFavorito(ContactModel prModel) {
    for (int i = 0; i < this._contactList.length; i++)
      if (this.getContact(i).id == prModel.id)
        this.getContact(i).favorito = !this.getContact(i).favorito;
  }
}

enum ContactActionType { addContact, setAsFavorite, removeContact }

class ContactAction {
  late ContactModel contact;
  ContactActionType type = ContactActionType.addContact;

  ContactAction({required this.contact, required this.type});
}

ContactState contactStateReducer(
    ContactState prCurrentState, dynamic prAction) {
  if (prAction.type == ContactActionType.addContact)
    prCurrentState.addContact(prAction.contact);

  if (prAction.type == ContactActionType.setAsFavorite)
    prCurrentState.setarFavorito(prAction.contact);
  
  if (prAction.type == ContactActionType.removeContact)
    prCurrentState.removeContact(prAction.contact);

  return prCurrentState;
}
