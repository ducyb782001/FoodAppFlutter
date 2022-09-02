import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_demo/blocs/bloc/todos_bloc.dart';
import 'package:bloc_demo/models/todos.dart';
import 'package:bloc_demo/models/todos_filter_model.dart';
import 'package:equatable/equatable.dart';

part 'todo_filter_event.dart';
part 'todo_filter_state.dart';

class TodoFilterBloc extends Bloc<TodoFilterEvent, TodoFilterState> {
  final TodosBloc _todosBloc;
  late StreamSubscription _todoSubscription;
  TodoFilterBloc({required TodosBloc todosBloc})
      : _todosBloc = todosBloc,
        super(TodoFilterLoading()) {
    on<UpdateFilter>(_onUpdateFilter);
    on<UpdateTodos>(_onUpdateTodos);

    _todoSubscription = todosBloc.stream.listen((state) {
      add(
        const UpdateTodos(),
      );
    });
  }

  void _onUpdateTodos(UpdateTodos event, Emitter<TodoFilterState> emit) {
    final state = _todosBloc.state;
    if (state is TodosLoaded) {
      List<Todo> todos = state.todos.where((todo) {
        switch (event.todosFilter) {
          case TodoFilter.all:
            return true;
          case TodoFilter.completed:
            return todo.isCompleted!;
          case TodoFilter.cancelled:
            return todo.isCanceled!;
          case TodoFilter.pending:
            return !(todo.isCanceled! || todo.isCompleted!);
        }
      }).toList();
    }
  }

  void _onUpdateFilter(UpdateFilter event, Emitter<TodoFilterState> emit) {
    if (state is TodoFilterLoading) {
      add(
        const UpdateTodos(todosFilter: TodoFilter.pending),
      );
    }
    if (state is TodoFilterLoaded) {
      final state = this.state as TodoFilterLoaded;
      add(
        UpdateTodos(todosFilter: state.todosFilter),
      );
    }
  }
}
