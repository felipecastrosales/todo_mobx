// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListStore on ListStoreBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: 'ListStoreBase.isFormValid'))
          .value;

  late final _$newToDoTitleAtom =
      Atom(name: 'ListStoreBase.newToDoTitle', context: context);

  @override
  String get newToDoTitle {
    _$newToDoTitleAtom.reportRead();
    return super.newToDoTitle;
  }

  @override
  set newToDoTitle(String value) {
    _$newToDoTitleAtom.reportWrite(value, super.newToDoTitle, () {
      super.newToDoTitle = value;
    });
  }

  late final _$toDoListAtom =
      Atom(name: 'ListStoreBase.toDoList', context: context);

  @override
  ObservableList<ToDoStore> get toDoList {
    _$toDoListAtom.reportRead();
    return super.toDoList;
  }

  @override
  set toDoList(ObservableList<ToDoStore> value) {
    _$toDoListAtom.reportWrite(value, super.toDoList, () {
      super.toDoList = value;
    });
  }

  late final _$ListStoreBaseActionController =
      ActionController(name: 'ListStoreBase', context: context);

  @override
  void setNewToDoTitle(String value) {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.setNewToDoTitle');
    try {
      return super.setNewToDoTitle(value);
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToDo() {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.addToDo');
    try {
      return super.addToDo();
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newToDoTitle: ${newToDoTitle},
toDoList: ${toDoList},
isFormValid: ${isFormValid}
    ''';
  }
}
