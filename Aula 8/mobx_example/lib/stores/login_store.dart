import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String userName = "";

  @observable
  String password = "";

  @observable
  String errorMessage = "";

  @observable
  bool hidePassword = true;

  @computed
  bool get canLogin => this.userName.isNotEmpty && this.password.isNotEmpty;

  @computed
  bool get hasError => errorMessage.isNotEmpty;

  @action
  void setUserName(String userName) {
    this.userName = userName;
  }

  @action
  void setPassword(String password) {
    this.password = password;
  }

  @action
  void login() {
    // bla bla bla
    errorMessage = "";

    if (userName != "alberto")
      errorMessage = "Usuário inválido";
  }

  @action
  void setHidePassword() {
    hidePassword = !hidePassword;
  }
}