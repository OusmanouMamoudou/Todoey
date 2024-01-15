import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.title,
    required this.isChecked,
    required this.function,
    required this.delFunction,
  });
  final String title;
  final bool isChecked;
  final Function(bool?)? function;
  final Function()? delFunction;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: isChecked
                ? const TextStyle(decoration: TextDecoration.lineThrough)
                : null),
        onLongPress: delFunction,
        trailing: Checkbox(
          value: isChecked,
          onChanged: function,
        ));
  }
}
