class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: "01", todoText: "Morning Exercise", isDone: true),
      ToDo(id: "02", todoText: "Buy Groceries", isDone: true),
      ToDo(id: "03", todoText: "Check Emails"),
      ToDo(id: "04", todoText: "Team Meeting"),
      ToDo(id: "04", todoText: "Dinner with Jenny")
    ];
  }
}
