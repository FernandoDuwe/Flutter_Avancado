import 'package:exercicio17/states/userState.dart';
import 'package:exercicio17/stores/userStore.dart';
import 'package:flutter/material.dart';

class OnlineButton extends StatelessWidget {
  const OnlineButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          if (userStore.state.user.isOnline) {
            userStore.dispatch(UserAction(
                newState: userStore.state, action: UserActionType.goOffline));
          } else {
            userStore.dispatch(UserAction(
                newState: userStore.state, action: UserActionType.goOnline));
          }
        },
        icon: Icon(Icons.online_prediction,
            color: (userStore.state.user.isOnline
                ? Colors.greenAccent
                : Colors.grey)));
  }
}
