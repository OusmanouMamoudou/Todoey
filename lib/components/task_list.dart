import 'package:flutter/material.dart';
import 'package:todoey/components/task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key, required, required this.isChecked});
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      TaskItem(
        title: 'Acheter du lait',
        isChecked: isChecked,
      ),
      TaskItem(
        title: 'Acheter des oeufs',
        isChecked: isChecked,
      ),
      TaskItem(
        title: 'Acheter du Pains',
        isChecked: isChecked,
      ),
    ]);
  }
}
