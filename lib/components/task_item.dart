import 'package:flutter/material.dart';
import 'package:todoey/components/my_check_box.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({super.key, required this.title});
  final String title;

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title,
          style: isChecked
              ? const TextStyle(decoration: TextDecoration.lineThrough)
              : null),
      trailing: MyCheckBox(
        isChecked: isChecked,
        function: (value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}
