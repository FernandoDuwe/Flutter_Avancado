import 'package:mobx/mobx.dart';
import 'package:mobx_example/models/contactModel.dart';
import 'package:mobx_example/stores/contactModelStore.dart';
part 'contactListStore.g.dart';

class ContactListStore = _ContactListStore with _$ContactListStore;

abstract class _ContactListStore with Store {

  ObservableList<ContactModelStore> contactList = ObservableList<ContactModelStore>();

  @computed
  int get contactCount => this.contactList.length;

  @computed
  int get favoriteCount {
    int vrCounter = 0;

    this.contactList.forEach((element) => vrCounter += (element.favorite ? 1 : 0));

    return vrCounter;
  }

  @action
  void addContact(ContactModel prModel) {
    ContactModelStore vrStore = ContactModelStore();
    vrStore.model = prModel;

    this.contactList.add(vrStore);
  }

  @action
  void removeContact(ContactModelStore prModel) {
    this.contactList.remove(prModel);
  }
}
