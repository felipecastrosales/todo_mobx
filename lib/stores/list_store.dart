import 'package:mobx/mobx.dart';

import 'todo_store.dart';

part 'list_store.g.dart';

class ListStore = ListStoreBase with _$ListStore;

abstract class ListStoreBase with Store {
  @observable
  String newToDoTitle = "";

  @action
  void setNewToDoTitle(String value) => newToDoTitle = value;

  @computed
  bool get isFormValid => newToDoTitle.isNotEmpty;

  @observable
  ObservableList<ToDoStore> toDoList = ObservableList<ToDoStore>();

  @action
  void addToDo() {
    toDoList.insert(0, ToDoStore(newToDoTitle));
    newToDoTitle = '';
  }
}
