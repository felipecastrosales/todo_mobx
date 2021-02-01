import 'package:mobx/mobx.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {
  @observable
  String newToDoTitle = "";

  // ignore: use_setters_to_change_properties
  @action
  void setNewToDoTitle(String value) => newToDoTitle = value;

  @computed
  bool get isFormValid => newToDoTitle.isNotEmpty;

  @observable
  ObservableList<String> toDoList = ObservableList();

  @action
  void addToDo() {
    toDoList.add(newToDoTitle);
  }
}
