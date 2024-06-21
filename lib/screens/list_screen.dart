import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../stores/list_store.dart';
import '../stores/login_store.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_text_field.dart';
import 'login_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  ListStore listStore = ListStore();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Tarefas',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 32,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.exit_to_app),
                      color: Colors.white,
                      onPressed: () {
                        Provider.of<LoginStore>(context, listen: false)
                            .logout();
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Observer(builder: (_) {
                          return CustomTextField(
                            controller: controller,
                            hint: 'Tarefa',
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 0,
                            ),
                            onChanged: listStore.setNewToDoTitle,
                            suffix: listStore.isFormValid
                                ? CustomIconButton(
                                    radius: 32,
                                    iconData: Icons.add,
                                    onTap: () {
                                      listStore.addToDo();
                                      controller.clear();
                                    })
                                : null,
                          );
                        }),
                        const SizedBox(height: 8),
                        Expanded(
                          child: Observer(builder: (_) {
                            return ListView.separated(
                              itemCount: listStore.toDoList.length,
                              itemBuilder: (_, index) {
                                final toDo = listStore.toDoList[index];
                                return Observer(
                                  builder: (_) {
                                    return ListTile(
                                      title: Text(
                                        toDo.title,
                                        style: TextStyle(
                                          decoration: toDo.done
                                              ? TextDecoration.lineThrough
                                              : null,
                                          color: toDo.done
                                              ? Theme.of(context).primaryColor
                                              : Colors.teal[900],
                                        ),
                                      ),
                                      onTap: toDo.toggleDone,
                                    );
                                  },
                                );
                              },
                              separatorBuilder: (_, __) {
                                return const Divider();
                              },
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
