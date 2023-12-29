import 'package:flutter/material.dart';
import 'package:todoey/components/task_list.dart';
import 'package:todoey/const.dart';
import 'package:todoey/screens/add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => const AddTaskScreen());
        },
        backgroundColor: kLBlue,
        child: const Icon(
          Icons.add,
          color: kWhite,
          size: 40,
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(Icons.list, size: 40, color: kLBlue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Todoey',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: kWhite,
                      )),
                  Text('12 Tâches',
                      style: TextStyle(
                        color: kWhite,
                      ))
                ])),
        Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: kBoxDecoration,
                child: TaskList(
                  isChecked: isChecked!,
                )))
      ]),
    );
  }
}
