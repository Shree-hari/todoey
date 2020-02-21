import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: "buy milk"),
    Task(name: "buy bread"),
    Task(name: "buy eggs"),
  ];

  void addTask (String newTaskTitle){
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  int get taskCount {
    return tasks.length;
  }

}