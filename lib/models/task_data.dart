import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: "buy milk"),
    Task(name: "buy bread"),
    Task(name: "buy eggs"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask (String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask (Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask (index){
    _tasks.remove(index);
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

}