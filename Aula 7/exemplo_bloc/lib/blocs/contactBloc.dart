import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exemplo_bloc/models/contactModel.dart';

class ContactBloc extends BlocBase {
  int _internalID = 0;
  List<ContactModel> _contactList = [];

  final StreamController<List<ContactModel>> _contactController =
      StreamController<List<ContactModel>>();

  final StreamController<ContactModel> _addContactController = StreamController<ContactModel>();
  final StreamController<ContactModel> _favoriteContactController = StreamController<ContactModel>();
  final StreamController<ContactModel> _removeContactController = StreamController<ContactModel>();

  final StreamController<int> _contactCounter = StreamController<int>();
  final StreamController<int> _favoriteCounter = StreamController<int>();

  // Tornando meu fluxo visível externamente
  Stream<List<ContactModel>> get contactStream => this._contactController.stream;
  Stream<int> get contactCounter => this._contactCounter.stream;
  Stream<int> get favoriteCouter => this._favoriteCounter.stream;

  // Sink get contactSink => this._contactController.sink;

  Sink get addContact => this._addContactController.sink;

  Sink get favoriteContact => this._favoriteContactController.sink;

  Sink get removeContact => this._removeContactController.sink;

  ContactBloc() {
    this._addContactController.stream.listen(this._listenerAddContact);

    this._favoriteContactController.stream.listen(this._listenerFavoriteContact);

    this._removeContactController.stream.listen(this._listenerRemoveContact);
  }

  void _listenerAddContact(ContactModel prModel) {
    prModel.id = this._internalID;

    this._internalID++;

    this._contactList.add(prModel);

    this._contactController.sink.add(this._contactList);
    this._contactCounter.sink.add(this._contactList.length);
  }

  void _listenerFavoriteContact(ContactModel prModel) {
    int vrCounter = 0;

    this._contactList.forEach((element) {
      if (element.id == prModel.id)
        element.favorito = !element.favorito;

      if (element.favorito)
        vrCounter++;
    });

    this._contactController.sink.add(this._contactList);
    this._favoriteCounter.sink.add(vrCounter);
  }

  void _listenerRemoveContact(ContactModel prModel) {
    int vrFavorite = 0;

    for(int i = this._contactList.length - 1; i >= 0; i--) {
      if (this._contactList[i].id == prModel.id) {
        this._contactList.removeAt(i);
        continue;
      }

      if (this._contactList[i].favorito)
        vrFavorite++;
    }

    this._contactController.sink.add(this._contactList);
    this._contactCounter.sink.add(this._contactList.length);
    this._favoriteCounter.sink.add(vrFavorite);
  }

  @override
  void dispose() {
    this._contactController.close();
    this._addContactController.close();
    this._favoriteContactController.close();
    this._contactCounter.close();
    this._removeContactController.close();

    super.dispose();
  }
}
