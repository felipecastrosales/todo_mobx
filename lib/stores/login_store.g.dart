// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  final _$emailAtom = Atom(name: '_LoginStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginStore.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$setEmailAsyncAction = AsyncAction('_LoginStore.setEmail');

  @override
  Future<void> setEmail(String value) {
    return _$setEmailAsyncAction.run(() => super.setEmail(value));
  }

  final _$setPasswordAsyncAction = AsyncAction('_LoginStore.setPassword');

  @override
  Future<void> setPassword(String value) {
    return _$setPasswordAsyncAction.run(() => super.setPassword(value));
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password}
    ''';
  }
}
