import 'package:flutter/material.dart';
import 'package:todoey/const.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              TextField(autofocus: true, onChanged: (value) {}),
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
                  onPressed: () {})
            ],
          )),
    );
  }
}
