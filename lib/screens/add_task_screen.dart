import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/const.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String? taskName;
    return Center(
      child: Container(
          padding: const EdgeInsets.all(15),
          decoration: kBoxDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Ajouter Une Tâche',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kLBlue,
                  fontSize: 30,
                ),
              ),
              TextField(
                  autofocus: true,
                  onChanged: (value) {
                    taskName = value;
                  }),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kLBlue,
                  ),
                  child: const Text(
                    'Ajouter',
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(taskName);
                    Navigator.pop(context);
                  })
            ],
          )),
    );
  }
}
