import 'package:flutter/foundation.dart';
import 'package:todo_app/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Tasks> _tasks = [
    Tasks(task: "Buy Milk"),
    Tasks(task: "Buy Bread"),
    Tasks(task: "Buy Choco")
  ];

  List<Tasks> get tasks{
    return _tasks;
  }

  void addTasks(String newTask){
    final task = Tasks(task: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  int get tasksCount{
    return _tasks.length;
  }

  void updateTask(Tasks task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Tasks task){
    _tasks.remove(task);
    notifyListeners();
  }
}

