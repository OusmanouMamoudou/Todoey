import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.name,
    required this.isChecked,
    required this.function,
    required this.delFunction,
  });
  final String name;
  final bool isChecked;
  final Function(bool?)? function;
  final Function()? delFunction;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          name,
          style: isChecked
              ? const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.bold)
              : const TextStyle(fontSize: 18, letterSpacing: 1.5),
        ),
        onLongPress: delFunction,
        trailing: Checkbox(
          value: isChecked,
          onChanged: function,
        ));
  }
}
