import 'package:flutter/material.dart';
import 'package:todoey/components/task_item.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key, required this.tasks});
  final List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, i) {
          return TaskItem(
              title: widget.tasks[i].title!,
              isChecked: widget.tasks[i].isDone,
              function: (value) {
                setState(() {
                  widget.tasks[i].toggleIsDone();
                });
              });
        });
  }
}
