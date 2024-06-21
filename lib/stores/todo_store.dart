import 'package:mobx/mobx.dart';

part 'todo_store.g.dart';

class ToDoStore = ToDoStoreBase with _$ToDoStore;

abstract class ToDoStoreBase with Store {
  ToDoStoreBase(this.title);
  final String title;

  @observable
  bool done = false;

  @action
  void toggleDone() => done = !done;
}
