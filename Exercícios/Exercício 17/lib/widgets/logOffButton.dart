import 'package:flutter/material.dart';

import '../models/userModel.dart';
import '../states/userState.dart';
import '../stores/userStore.dart';

class LogOffButton extends StatelessWidget {
  const LogOffButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => userStore.dispatch(UserAction(
          newState: UserState(userStore.state.navigatorkey,
              UserModel(name: "", password: "", userName: "")),
          action: UserActionType.logoff)),
      backgroundColor: Colors.red,
      child: Icon(Icons.logout),
    );
  }
}
