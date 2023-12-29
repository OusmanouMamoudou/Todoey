import 'package:flutter/material.dart';
import 'package:todoey/components/task_item.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key, required});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(title: 'Acheter du lait'),
    Task(title: 'Acheter des oeufs'),
    Task(title: 'Acheter du Pain'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, i) {
          return TaskItem(
              title: tasks[i].title!,
              isChecked: tasks[i].isDone,
              function: (value) {
                setState(() {
                  tasks[i].toggleIsDone();
                });
              });
        });
  }
}
