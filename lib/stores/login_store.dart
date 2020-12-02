import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String email = '';
  @action
  Future<void> setEmail(String value) async => email = value;

  @observable
  String password = '';
  @action
  Future<void> setPassword(String value) async => password = value;

  @observable
  bool passwordVisible = false;
  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  @observable
  bool loading = false;
  @action
  Future<void> login() async {
    loading = true;
    await Future.delayed(Duration(seconds: 2));
  }

  @computed
  bool get isEmailValid => RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get isPassworValid => password.length > 6;

  @computed 
  Function get loginPressed => 
      (isEmailValid && isPassworValid && !loading) ? login : null;
}
