import 'package:redux/redux.dart';

import '../states/userState.dart';

final Store<UserState> userStore =
    Store<UserState>(userReducer, initialState: UserState(userName: "fernando.duwe"));
