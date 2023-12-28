import 'package:flutter/material.dart';
import 'package:todoey/const.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
          decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              )),
        ))
      ]),
    );
  }
}
