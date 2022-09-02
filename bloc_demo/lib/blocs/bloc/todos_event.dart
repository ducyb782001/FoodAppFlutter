part of 'todos_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

// Event load het nhung gi trong list
class LoadTodos extends TodosEvent {
  final List<Todo> todos;
  const LoadTodos({this.todos = const <Todo>[]});
  @override
  // TODO: implement props
  List<Object> get props => [todos];
}

class AddTodos extends TodosEvent {
  final Todo todo;

  const AddTodos({required this.todo});
  @override
  // TODO: implement props
  List<Object> get props => [todo];
}

class UpdateTodos extends TodosEvent {
  final Todo todo;

  const UpdateTodos({required this.todo});
  @override
  // TODO: implement props
  List<Object> get props => [todo];
}

class DeleteTodos extends TodosEvent {
  final Todo todo;

  const DeleteTodos({required this.todo});
  @override
  // TODO: implement props
  List<Object> get props => [todo];
}
