// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ToDoStore on ToDoStoreBase, Store {
  late final _$doneAtom = Atom(name: 'ToDoStoreBase.done', context: context);

  @override
  bool get done {
    _$doneAtom.reportRead();
    return super.done;
  }

  @override
  set done(bool value) {
    _$doneAtom.reportWrite(value, super.done, () {
      super.done = value;
    });
  }

  late final _$ToDoStoreBaseActionController =
      ActionController(name: 'ToDoStoreBase', context: context);

  @override
  void toggleDone() {
    final _$actionInfo = _$ToDoStoreBaseActionController.startAction(
        name: 'ToDoStoreBase.toggleDone');
    try {
      return super.toggleDone();
    } finally {
      _$ToDoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
done: ${done}
    ''';
  }
}
