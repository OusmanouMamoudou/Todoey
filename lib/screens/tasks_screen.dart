import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_list.dart';
import 'package:todoey/const.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(Icons.list, size: 40, color: kBlack),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Todoey',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: kWhite,
                  )),
              Consumer<TaskData>(builder: (context, taskData, child) {
                if (taskData.tasks.isNotEmpty) {
                  return Text('${taskData.tasksLength} Tâches',
                      style: const TextStyle(
                        color: kWhite,
                      ));
                }
                return const Text('');
              })
            ])),
        Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: kBoxDecoration,
                child: const TaskList()))
      ]),
    );
  }
}
