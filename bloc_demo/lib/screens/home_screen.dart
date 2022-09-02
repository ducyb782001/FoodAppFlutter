import 'package:bloc_demo/blocs/bloc/todos_bloc.dart';
import 'package:bloc_demo/models/todos_filter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/todos.dart';
import 'add_todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('BLoC pattern: TO DOS'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const AddTodoScreen()),
                    ));
              },
              icon: Icon(Icons.add),
            ),
          ],
          bottom: TabBar(
            onTap: (tabIndex) {
              switch (tabIndex) {
                case 0:
                  break;
              }
            },
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.pending,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.add_task,
                ),
              )
            ],
          ),
        ),
        body: _todo(),
      ),
    );
  }

  BlocBuilder<TodosBloc, TodosState> _todo() {
    return BlocBuilder<TodosBloc, TodosState>(
      builder: (context, state) {
        if (state is TodosLoading) {
          return const CircularProgressIndicator();
        }
        if (state is TodosLoaded) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    'Pending To Dos: ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.todos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _todoCard(context, state.todos[index]);
                  },
                ),
              ],
            ),
          );
        } else {
          return const Text("There are some error");
        }
      },
    );
  }

  Card _todoCard(BuildContext context, Todo todo) {
    return Card(
      margin: EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '#${todo.id}: ${todo.task}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.read<TodosBloc>().add(
                          UpdateTodos(
                            todo: todo.copyWith(isCompleted: true),
                          ),
                        );
                  },
                  icon: Icon(Icons.add_task),
                ),
                IconButton(
                  onPressed: () {
                    context.read<TodosBloc>().add(
                          DeleteTodos(todo: todo),
                        );
                  },
                  icon: Icon(Icons.cancel),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
