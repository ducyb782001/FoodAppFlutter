part of 'todo_filter_bloc.dart';

abstract class TodoFilterEvent extends Equatable {
  const TodoFilterEvent();

  @override
  List<Object> get props => [];
}

class UpdateFilter extends TodoFilterEvent {
  const UpdateFilter();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class UpdateTodos extends TodoFilterEvent {
  final TodoFilter todosFilter;

  const UpdateTodos({this.todosFilter = TodoFilter.all});
  @override
  // TODO: implement props
  List<Object> get props => [todosFilter];
}
