import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/add_task.dart';
import 'package:todoey/components/my_snack_bar.dart';
import 'package:todoey/components/task_item.dart';
import 'package:todoey/const.dart';
import 'package:todoey/models/task_data.dart';

//  The TaskList class is responsible for displaying the list of tasks. It uses the Consumer widget from the provider package to listen for changes in the TaskData model.
//  If there are no tasks, the AddTask widget is displayed in the center.
//  The list of tasks is displayed using ListView.builder.
//   Each task item is wrapped in a Material container with specific styling.
// /The TaskItem widget is used to display information about each task.
//  Callback functions (function and delFunction) are provided to handle updating task completion status and deleting tasks.
//  A snackbar is displayed to provide feedback when a task is deleted, depending on its completion status.

// La classe TaskList est responsable de l'affichage de la liste des tâches. Elle utilise le widget Consumer du package provider pour écouter les changements dans le modèle TaskData.
// S'il n'y a pas de tâches, le widget AddTask est affiché au centre.
// La liste des tâches est affichée en utilisant ListView.builder.
// Chaque élément de tâche est enveloppé dans un conteneur Material avec un style spécifique.
// Le widget TaskItem est utilisé pour afficher des informations sur chaque tâche.
// Des fonctions de rappel (function et delFunction) sont fournies pour gérer la mise à jour de l'état d'achèvement de la tâche et la suppression des tâches.
// Un snackbar est affiché pour fournir des commentaires lorsqu'une tâche est supprimée, en fonction de son état d'achèvement.

// TaskList class responsible for displaying the list of tasks
class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      // If there are no tasks, display the AddTask widget in the center
      if (taskData.tasks.isEmpty) {
        return const Center(child: AddTask());
      }

      // Display the list of tasks using ListView.builder
      return ListView.builder(
          itemCount: taskData.tasksLength,
          itemBuilder: (context, i) {
            // Get the task at index i
            final task = taskData.tasks[i];

            // Build each task item with padding and a container
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 2,
              ),
              child: Column(
                children: [
                  // Material container for each task item
                  Material(
                      color: kBlack,
                      borderRadius: kContainerBoxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: TaskItem(
                          // TaskItem widget displays the task information
                          name: task.name!,
                          isChecked: task.isDone,
                          // Callback function to update task completion status
                          function: (value) {
                            taskData.updateTask(task);
                          },
                          // Callback function to delete the task
                          delFunction: () {
                            if (task.isDone) {
                              // Delete the task and show a snackbar if it's done
                              taskData.deleteTask(task);
                              MySnackBar.mySnack(context,
                                  "Vous venez de supprimer la tâche '${task.name}'.");
                            } else {
                              // Show a snackbar if the task is not done
                              MySnackBar.mySnack(context,
                                  "La tâche ${task.name} n'est pas effectuée.");
                            }
                          },
                        ),
                      )),
                  // Show the AddTask widget at the end of the list
                  if (i == taskData.tasksLength - 1) const AddTask(),
                ],
              ),
            );
          });
    });
  }
}
