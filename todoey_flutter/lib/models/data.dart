import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy egg"),
    Task(name: "Buy bread"),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount => _tasks.length;

  Task getTask(int index){
    return _tasks[index];
  }

  void addTask(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}