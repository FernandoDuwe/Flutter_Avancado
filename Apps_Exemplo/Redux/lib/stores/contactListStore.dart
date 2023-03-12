import 'package:redux/redux.dart';
import '../states/contactListState.dart';

/*

    A Store guarda o estado atual, além do reducer. É a partir dele que
    manipularemos e visualizaremos os nossos estados

 */
final Store<ContactListState> contactListStore = Store<ContactListState>(
    contactListReducer, initialState: ContactListState([])
);

