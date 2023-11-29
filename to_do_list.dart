class Tasks {
  String? description;
  bool? isComplete;

  Tasks(this.description, this.isComplete);
}

class TodoList {
  List<Tasks> tasks = [];

  void addTask(String description) {
    tasks.add(Tasks(description, false));
  }

  void completeTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks[index].isComplete = true;
    }
  }

  void removeTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
    }
  }
}

void main() {
  TodoList todoList = TodoList();
  todoList.addTask("I have to write my diary");
  todoList.addTask("I have to complete this code");
  todoList.addTask("I learn flutter");
  todoList.completeTask(0);
  todoList.removeTask(1);
  print("Remaining Tasks: ");
  for (int i = 0; i < todoList.tasks.length; i++) {
    print("${i}. ${todoList.tasks[i].description}");
  }
}
