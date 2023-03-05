class UserModel {
  UserModel();

  bool login(String prUserName, String prPassword) {
    return ((prUserName == "admin") && (prPassword == "admin"));
  }
}