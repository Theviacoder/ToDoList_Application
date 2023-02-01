import 'package:flutter/material.dart';

import '../constants/ColorUtility.dart';
import '../model/todo.dart';
import 'todo_item.dart';

// ignore: must_be_immutable
class ToDoList extends StatelessWidget {
  ToDoList({super.key});
  final todoList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 20),
            child: Text(
              "All ToDo's",
              style: TextStyle(color: tdBlack, fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          for (ToDo todo in _foundToDo)
            ToDoItem(
                todo: todo,
                onToDoChanged: (ToDo toDo) {
                  todo.isDone = !todo.isDone;
                },
                onDeleteItem: (String id) {
                  todoList.removeWhere((item) => item.id == id);
                }),
        ],
      ),
    );
  }
}
