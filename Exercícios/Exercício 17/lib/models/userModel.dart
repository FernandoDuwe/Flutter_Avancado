enum UserOnlineState { online, offline }

class UserModel {
  String name = "";
  String userName = "";
  String password = "";
  UserOnlineState state = UserOnlineState.online;

  bool logged = false;

  UserModel(
      {required this.name, required this.userName, required this.password});

  bool login(String prUserName, String prPassword) {
    return ((this.userName == prUserName) && (this.password == prPassword));
  }

  bool get isOnline => this.state == UserOnlineState.online;

  void goOffLine() {
    this.state = UserOnlineState.offline;
  }

  void goOnLine() {
    this.state = UserOnlineState.online;
  }
}
