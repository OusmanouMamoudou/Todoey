// Definition of the Task class

// The Task class represents a task in the to-do list.
// The class has two properties: name (the name of the task) and isDone (a boolean indicating whether the task is done or not).
// The constructor allows creating a task with an optional name and a default value of false for isDone.
// The toggleIsDone method is used to toggle the completion status of the task.

// La classe Task représente une tâche dans la liste de choses à faire.
// La classe a deux propriétés : name (le nom de la tâche) et isDone (un booléen indiquant si la tâche est effectuée ou non).
// Le constructeur permet de créer une tâche avec un nom facultatif et une valeur par défaut de false pour isDone.
// La méthode toggleIsDone est utilisée pour basculer l'état d'achèvement de la tâche.

class Task {
  // Properties of the Task class
  final String? name; // Name of the task (can be null)
  bool isDone; // Indicates whether the task is done or not

  // Constructor for the Task class
  Task({this.name, this.isDone = false});

  // Method to toggle the 'isDone' status of the task
  void toggleIsDone() {
    isDone = !isDone;
  }
}
