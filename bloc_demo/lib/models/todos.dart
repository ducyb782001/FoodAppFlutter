// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Todo extends Equatable {
  final String id;
  final String task;
  final String description;
  bool? isCompleted;
  bool? isCanceled;
  Todo({
    required this.id,
    required this.task,
    required this.description,
    this.isCompleted,
    this.isCanceled,
  }) {
    isCanceled = isCanceled ?? false;
    isCompleted = isCompleted ?? false;
  }

  Todo copyWith({
    String? id,
    String? task,
    String? description,
    bool? isCompleted,
    bool? isCanceled,
  }) {
    return Todo(
        id: id ?? this.id,
        task: task ?? this.task,
        description: description ?? this.description,
        isCompleted: isCompleted ?? this.isCompleted,
        isCanceled: isCanceled ?? this.isCanceled);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        task,
        description,
        isCanceled,
        isCompleted,
      ];

  static List<Todo> todos = [
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
  ];
}
