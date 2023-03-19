import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import '../models/contactModel.dart';


class ContactBloc extends BlocBase {
  List<ContactModel> _contactList = [];

  final StreamController<List<ContactModel>> _contactController = StreamController<List<ContactModel>>();
  final StreamController<ContactModel> _addController = StreamController<ContactModel>();
  final StreamController<ContactModel> _outController = StreamController<ContactModel>();
  final StreamController<int> _favoriteCounterController = StreamController<int>();

  // Saída do stream
  Stream<List<ContactModel>> get contacts => this._contactController.stream;

  // Entrada do stream principal
  Sink get inContacts => this._contactController.sink;

  // Adicionar um novo contato
  Sink get addContact => this._addController.sink;

  // Remover um contato
  Sink get outController => this._outController.sink;

  // Saída do stream de contador de favoritos
  Stream<int> get favoriteCounter => this._favoriteCounterController.stream;

  ContactBloc() {
    this._favoriteCounterController.sink.add(0);

    this._addController.stream.listen((event) {
      int index = -1;
      int favoriteCounter = 0;

      for (int i = 0; i < this._contactList.length; i++) {
        if (this._contactList[i].favorito)
          favoriteCounter++;

        if (this._contactList[i].nome == event.nome)
          index = i;
      }

      if (index == -1)
        this._contactList.add(event);
      else
        this._contactList[index] = event;

      this.inContacts.add(this._contactList);

      this._favoriteCounterController.sink.add(favoriteCounter);
    });

    this._outController.stream.listen((event) {
      int index = -1;
      int favoriteCounter = 0;

      for (int i = 0; i < this._contactList.length; i++) {
        if (this._contactList[i].nome == event.nome) {
          index = i;

          continue;
        }

        if (this._contactList[i].favorito)
          favoriteCounter++;
      }

      if (index != -1)
        this._contactList.removeAt(index);

      this.inContacts.add(this._contactList);

      this._favoriteCounterController.sink.add(favoriteCounter);
    });
  }

  @override
  void dispose() {
    this._contactController.close();
    this._addController.close();
    this._outController.close();
    this._favoriteCounterController.close();

    super.dispose();
  }
}