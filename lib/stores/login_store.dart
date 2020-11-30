import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  _LoginStore() {
    autorun((_) {
      print(email);
      print(password);
    });
  }

  @observable
  String email = '';
  @action
  Future<void> setEmail(String value) async => email = value;

  @observable
  String password = '';
  @action
  Future<void> setPassword(String value) async => password = value;
}
