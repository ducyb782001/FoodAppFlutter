import 'package:bloc_demo/blocs/bloc/todos_bloc.dart';
import 'package:bloc_demo/blocs/todo_filter/todo_filter_bloc.dart';
import 'package:bloc_demo/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'models/todos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodosBloc()
            ..add(
              LoadTodos(todos: [
                Todo(
                  id: '1',
                  task: "Sample Todo 1",
                  description: "This is test 1",
                ),
                Todo(
                  id: '2',
                  task: "Sample Todo 2",
                  description: "This is test 2",
                ),
              ]),
            ),
        ),
        BlocProvider(
          create: (context) => TodoFilterBloc(
            todosBloc: BlocProvider.of<TodosBloc>(context),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'BLoC pattern - ToDo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
