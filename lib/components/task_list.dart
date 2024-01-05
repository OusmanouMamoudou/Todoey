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
            return TaskItem(
                title: taskData.tasks[i].title!,
                isChecked: taskData.tasks[i].isDone,
                function: (value) {
                  // setState(() {
                  //   taskData.tasks[i].toggleIsDone();
                  // });
                });
          });
    });
  }
}
