import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.title,
    required this.isChecked,
    required this.function,
  });
  final String title;
  final bool isChecked;
  final Function(bool?)? function;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: isChecked
                ? const TextStyle(decoration: TextDecoration.lineThrough)
                : null),
        trailing: Checkbox(
          value: isChecked,
          onChanged: function,
        ));
  }
}
