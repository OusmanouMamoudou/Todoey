import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_list.dart';
import 'package:todoey/const.dart';
import 'package:todoey/models/task_data.dart';

//  The TasksScreen widget defines the main screen of the Todoey app.
//   The header section includes the Todoey logo, app title, and the number of tasks.
//   The body of the screen includes a container with padding and decoration for the task list.
// The Consumer widget is used to dynamically display the number of tasks.
// The TaskList widget is displayed inside an Expanded container.

//  Le widget TasksScreen définit l'écran principal de l'application Todoey.
//  La section en-tête comprend le titre de l'application et le nombre de tâches.
// Le corps de l'écran comprend un conteneur avec un remplissage et une décoration pour la liste des tâches.
// Le widget Consumer est utilisé pour afficher dynamiquement le nombre de tâches.
// Le widget TaskList est affiché à l'intérieur d'un conteneur Expanded

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Header Section
        Container(
          padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(Icons.list, size: 40, color: kBlack),
              ),
              const SizedBox(
                height: 10,
              ),
              // App Title
              const Text(
                'Todoey',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: kWhite,
                ),
              ),
              // Display Number of Tasks
              Consumer<TaskData>(builder: (context, taskData, child) {
                if (taskData.tasks.isNotEmpty) {
                  return Text(
                    '${taskData.tasksLength} Tâches',
                    style: const TextStyle(
                      color: kWhite,
                    ),
                  );
                }
                return const Text('');
              })
            ],
          ),
        ),

        // Task List Section
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: kBoxDecoration,
            child: const TaskList(),
          ),
        ),
      ]),
    );
  }
}
