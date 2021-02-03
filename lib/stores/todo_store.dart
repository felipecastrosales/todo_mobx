import 'package:mobx/mobx.dart';

part 'todo_store.g.dart';

class ToDoStore = _ToDoStore with _$ToDoStore;

abstract class _ToDoStore with Store {
  _ToDoStore(this.title);
  final String title;

  @observable
  bool done = false;

  @action
  void toggleDone() => done = !done;
}
