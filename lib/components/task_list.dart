import 'package:flutter/material.dart';
import 'package:todoey/components/task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key, required, required this.isChecked});
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      TaskItem(
        title: 'Acheter du lait',
      ),
      TaskItem(
        title: 'Acheter des oeufs',
      ),
      TaskItem(
        title: 'Acheter du Pains',
      ),
    ]);
  }
}
