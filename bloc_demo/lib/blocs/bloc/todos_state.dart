part of 'todos_bloc.dart';

abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

// State dang load
class TodosLoading extends TodosState {}

// State da load xong
class TodosLoaded extends TodosState {
  final List<Todo> todos;

  const TodosLoaded({this.todos = const <Todo>[]});
  @override
  // TODO: implement props
  List<Object> get props => [todos];
}
