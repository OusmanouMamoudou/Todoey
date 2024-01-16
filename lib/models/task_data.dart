import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

//  The TaskData class extends ChangeNotifier to allow for state management and notify listeners of any changes in the state.
//  The class contains a private list of tasks (_tasks) initially populated with three example tasks.
// Getters are provided to obtain the length of the task list (tasksLength) and an unmodifiable view of the task list (tasks).
// Methods are defined to add a new task (addTask), update the completion status of a task (updateTask), and delete a task (deleteTask).
// notifyListeners() is called after each modification to inform any listeners that the state has changed.

//  La classe TaskData étend ChangeNotifier pour permettre la gestion de l'état et notifier les auditeurs de tout changement dans l'état.
//  La classe contient une liste privée de tâches (_tasks) initialement peuplée de trois tâches exemple.
//  Des accesseurs sont fournis pour obtenir la longueur de la liste des tâches (tasksLength) et une vue non modifiable de la liste des tâches (tasks).
//  Des méthodes sont définies pour ajouter une nouvelle tâche (addTask), mettre à jour l'état d'achèvement d'une tâche (updateTask), et supprimer une tâche (deleteTask).
//  notifyListeners() est appelé après chaque modification pour informer les auditeurs que l'état a changé.

// TaskData class, extends ChangeNotifier for state management
class TaskData extends ChangeNotifier {
  // Private list of tasks
  final List<Task> _tasks = [
    Task(name: 'Acheter du lait'),
    Task(name: 'Acheter des œufs'),
    Task(name: 'Acheter du Pain'),
  ];

  // Getter to obtain the length of the task list
  int get tasksLength {
    return _tasks.length;
  }

  // Getter to obtain an unmodifiable view of the task list
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  // Method to add a new task to the list
  void addTask(taskName) {
    final newTask = Task(name: taskName);
    _tasks.add(newTask);
    notifyListeners(); // Notify listeners about the change in state
  }

  // Method to update the completion status of a task
  void updateTask(Task task) {
    task.toggleIsDone(); // Toggle the completion status of the task
    notifyListeners(); // Notify listeners about the change in state
  }

  // Method to delete a task from the list
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners(); // Notify listeners about the change in state
  }
}
