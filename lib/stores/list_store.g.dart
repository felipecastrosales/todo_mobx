// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on _ListStore, Store {
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_ListStore.isFormValid'))
          .value;

  final _$newToDoTitleAtom = Atom(name: '_ListStore.newToDoTitle');

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

  final _$toDoListAtom = Atom(name: '_ListStore.toDoList');

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

  final _$_ListStoreActionController = ActionController(name: '_ListStore');

  @override
  void setNewToDoTitle(String value) {
    final _$actionInfo = _$_ListStoreActionController.startAction(
        name: '_ListStore.setNewToDoTitle');
    try {
      return super.setNewToDoTitle(value);
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToDo() {
    final _$actionInfo =
        _$_ListStoreActionController.startAction(name: '_ListStore.addToDo');
    try {
      return super.addToDo();
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
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
