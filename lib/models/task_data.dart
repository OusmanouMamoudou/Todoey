import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Acheter du lait'),
    Task(title: 'Acheter des oeufs'),
    Task(title: 'Acheter du Pain'),
  ];
  int get tasksLength {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(taskName) {
    final newTask = Task(title: taskName);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleIsDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    
    _tasks.remove(task);
    notifyListeners();
  }
}
