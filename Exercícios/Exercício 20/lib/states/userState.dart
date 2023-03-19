class UserState {
  String userName = "";

  UserState({required this.userName});
}

enum UserStateActions { changeName }

class UserAction {
  final String user;
  final UserStateActions action;

  UserAction(this.user, this.action);
}

UserState userReducer(UserState prUser, dynamic prAction) {
  if (prAction.action == UserStateActions.changeName)
    return UserState(userName: prAction.user);

  return prUser;
}
