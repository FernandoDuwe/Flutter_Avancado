import 'package:exemplo_redux/state/contactState.dart';
import 'package:redux/redux.dart';

final Store<ContactState> contactStore =
    Store<ContactState>(contactStateReducer, initialState: ContactState([]));
