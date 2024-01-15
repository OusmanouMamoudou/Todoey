import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_item.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, i) {
            final task = taskData.tasks[i];
            return TaskItem(
              title: task.title!,
              isChecked: task.isDone,
              function: (value) {
                taskData.updateTask(task);
              },
              delFunction: () {
                taskData.deleteTask(task);
              },
            );
          });
    });
  }
}
