import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/add_task.dart';
import 'package:todoey/components/my_snack_bar.dart';
import 'package:todoey/components/task_item.dart';
import 'package:todoey/const.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      if (taskData.tasks.isEmpty) {
        return const Center(child: AddTask());
      }
      return ListView.builder(
          itemCount: taskData.tasksLength,
          itemBuilder: (context, i) {
            final task = taskData.tasks[i];
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 2,
              ),
              child: Column(
                children: [
                  Material(
                      color: kBlack,
                      borderRadius: kContainerBoxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: TaskItem(
                          name: task.name!,
                          isChecked: task.isDone,
                          function: (value) {
                            taskData.updateTask(task);
                          },
                          delFunction: () {
                            if (task.isDone) {
                              taskData.deleteTask(task);
                              MySnackBar.mySnack(context,
                                  "Vous venez de supprimés la tâche '${task.name}'.");
                            } else {
                              MySnackBar.mySnack(context,
                                  "La tâche ${task.name} n'est pas effectuée.");
                            }
                          },
                        ),
                      )),
                  if (i == taskData.tasksLength - 1) const AddTask(),
                ],
              ),
            );
          });
    });
  }
}
