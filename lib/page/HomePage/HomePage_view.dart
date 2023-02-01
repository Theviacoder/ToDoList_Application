import 'package:flutter/material.dart';
import 'package:todoapplication/constants/ColorUtility.dart';
import 'package:todoapplication/widget/todo_item.dart';
import '../../constants/PaddingUtility.dart';
import '../../constants/SizeUtility.dart';
import '../../model/todo.dart';
import '../../widget/BottomBar.dart';
import '../../widget/ItemListView.dart';
import '../../widget/todoTextField.dart';
import 'HomePage_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with PageFunction {
  final todoList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();
  final title = "All ToDo's";

  @override
  void initState() {
    _foundToDo = todoList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: ColorUtility().menuButtonColor,
          iconSize: iconSizeUtility().iconRegularSize,
        )
      ]),
      body: Stack(
        children: [
          Container(
            padding: PaddingUtility().screenPadding,
            child: Column(
              children: [
                buildSearchTextField(onpressed: (value) => _runfilter(value)),
                Expanded(
                  child: ListView(
                    children: [
                      ItemListView(title: title),
                      for (ToDo todo in _foundToDo)
                        ToDoItem(
                          todo: todo,
                          onToDoChanged: _handleToDoChange,
                          onDeleteItem: _deleteToDoItem,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: PaddingUtility().bottomBarlocation,
            child: Row(
              children: [
                BottomBar(todoController: _todoController),
                Container(
                    margin: PaddingUtility().floatingActionButtonMargin,
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: tdBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                        onPressed: () {
                          _addToDoItem(_todoController.text);
                        },
                        icon: Icon(
                          Icons.add,
                          color: tdBlack,
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }

  List<ToDo> toDoListAdd() => todoList;
// check todo Item func
  void _handleToDoChange(ToDo todo) async => setState(() {
        handleToDoChange(todo);
      });
//delete todo Item func
  void _deleteToDoItem(String id) => setState(() {
        var todoList2 = todoList;
        deleteItem(todoList2, id);
      });
//add todo Item func
  void _addToDoItem(String toDo) {
    setState(() {
      var doListAdd = toDoListAdd();
      newMethod(doListAdd, toDo);
    });
    _todoController.clear();
  }

//filter func
  void _runfilter(String enteredKeyword) {
    List<ToDo> result = [];
    result = enteredKeyword.isEmpty
        ? todoList
        : todoList.where((item) {
            var item2 = item;
            return item2.todoText!.toLowerCase().contains(enteredKeyword.toLowerCase());
          }).toList();
    setState(() {
      _foundToDo = result;
    });
  }
}
