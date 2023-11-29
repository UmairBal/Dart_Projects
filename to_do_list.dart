class Task {
  String? description;
  bool? isCompleted;

  Task(this.description, this.isCompleted);
}

class TodoList {
  List<Task> tasks = [];

  void addTask(String description) {
    tasks.add(Task(description, false));
  }

  void completeTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks[index].isCompleted = true;
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
  todoList.addTask("Learn Dart.");
  todoList.addTask("Build a to-do app");
  todoList.addTask("Learn Flutter after that.");
  todoList.completeTask(0);
  todoList.removeTask(1);
  print("Print remaining tasks:");
  for (int i = 0; i < todoList.tasks.length; i++) {
    print("${i}. ${todoList.tasks[i].description}");
  }
}
