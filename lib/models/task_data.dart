import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(title: 'Acheter du lait'),
    Task(title: 'Acheter des oeufs'),
    Task(title: 'Acheter du Pain'),
  ];
  int get tasksLength {
    return tasks.length;
  }
}