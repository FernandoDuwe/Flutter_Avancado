import 'package:mobx/mobx.dart';
import 'package:mobx_contatos/models/contactModel.dart';
import 'package:mobx_contatos/stores/contactStore.dart';
part 'contactListStore.g.dart';

class ContactListStore = _ContactListStore with _$ContactListStore;

abstract class _ContactListStore with Store {
  ObservableList<ContactStore> list = ObservableList<ContactStore>();

  @computed
  int get counter => this.list.length;

  @computed
  int get favoriteCounter {
    int vrCounter = 0;

    this.list.forEach((element) {
      vrCounter += (element.favorito ? 1 : 0);
    });

    return vrCounter;
  }

  @action
  void addContact(ContactStore prModel) {
    this.list.add(prModel);
  }

  @action
  void removeContact(ContactStore prModel) {
    this.list.remove(prModel);
  }
}