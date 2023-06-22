class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todolist() {
    return [
      ToDo(id: '01', todoText: 'todoText Example'),
      ToDo(
          id: '02',
          todoText: 'You Can Add Your Daily Chores That Need To Be Done'),
      ToDo(id: '03', todoText: 'And Delete'),
      ToDo(id: '04', todoText: 'Enjoy!')
    ];
  }
}
