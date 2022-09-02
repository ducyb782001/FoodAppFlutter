part of 'todo_filter_bloc.dart';

abstract class TodoFilterState extends Equatable {
  const TodoFilterState();

  @override
  List<Object> get props => [];
}

class TodoFilterLoading extends TodoFilterState {}

class TodoFilterLoaded extends TodoFilterState {
  final List<Todo> filteredTodos;
  final TodoFilter todosFilter;

  const TodoFilterLoaded({
    required this.filteredTodos,
    this.todosFilter = TodoFilter.all,
  });
  @override
  // TODO: implement props
  List<Object> get props => [
        filteredTodos,
        todosFilter,
      ];
}
