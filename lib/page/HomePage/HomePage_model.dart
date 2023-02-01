import '../../model/todo.dart';

class PageFunction {
  //check Item Function
  void handleToDoChange(ToDo todo) {
    todo.isDone = !todo.isDone;
  }

  // delete Item Function
  void deleteItem(List<ToDo> toDoList, String id) {
    toDoList.removeWhere((item) => item.id == id);
  }

  // add Item Fuction
  void newMethod(List<ToDo> doListAdd, String toDo) {
    return doListAdd.add(
      ToDo(id: DateTime.now().millisecondsSinceEpoch.toString(), todoText: toDo),
    );
  }
  
}
