import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lista_contatos_bloc/models/contact_model.dart';

class ContactListBloc extends BlocBase {
  List<ContactModel> _list = [];

  StreamController<List<ContactModel>> _listContact = StreamController.broadcast();

  Stream<List<ContactModel>> get streamContactList => _listContact.stream;

  ContactListBloc(super._state) {
    _listContact.sink.add([]);
  }

  void addContact(ContactModel contactModel) {
    try {
      _list.add(contactModel);
    } finally {
      _listContact.sink.add(_list);
    }
  }

  void updateContact(ContactModel contactModel) {
    try {
      _list.forEach((element) {
        if (element.id == contactModel.id)
          element = contactModel;
      });
    } finally {
      _listContact.sink.add(_list);
    }
  }

  void removeContact(ContactModel contactModel) {
    try {
      _list.removeWhere((element) => contactModel.id == element.id);
    } finally {
      _listContact.sink.add(_list);
    }
  }
}