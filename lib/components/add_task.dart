import 'package:flutter/material.dart';
import 'package:todoey/const.dart';
import 'package:todoey/screens/add_task_screen.dart';

class AddTask extends StatelessWidget {
  const AddTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          context: context,
          builder: (context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const AddTaskScreen(),
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: kContainerBoxDecoration,
              border: Border.all(
                width: 2,
              )),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: kContainerBoxDecoration,
                  border: Border.all(
                    width: 1.5,
                  )),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                child: Text(
                  'Ajouter une nouvelle tâche...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: kBlack,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
