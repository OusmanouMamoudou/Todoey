import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/const.dart';
import 'package:todoey/models/task_data.dart';

//  The UnderlineInputBorder is used to create a custom underline style for the text field.
//  The TextButton widget is used to create a button with custom styling.
// The onPressed callback for the button uses the Provider to add the task to the TaskData model and close the screen.

//  UnderlineInputBorder est utilisé pour créer un style de soulignement personnalisé pour le champ de texte.
//  Le widget TextButton est utilisé pour créer un bouton avec une mise en forme personnalisée.
//  La fonction de rappel onPressed pour le bouton utilise le Provider pour ajouter la tâche au modèle TaskData et fermer l'écran.

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Variable to store the task name
    String? taskName;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: kBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title for adding a task
            const Text(
              'Ajouter Une Tâche',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kBlack,
                fontSize: 30,
              ),
            ),
            // Text field for entering task name
            TextField(
              autofocus: true,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 3, color: kBlack),
                ),
              ),
              style: const TextStyle(
                color: kBlack,
                fontWeight: FontWeight.w600,
              ),
              onChanged: (value) {
                taskName = value;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            // Button to add the task
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kBlack,
              ),
              child: const Text(
                'Ajouter',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                // Use the TaskData provider to add the task and close the screen
                Provider.of<TaskData>(context, listen: false).addTask(taskName);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
