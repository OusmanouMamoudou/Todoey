import 'package:flutter/material.dart';
import 'package:todoey/const.dart';
import 'package:todoey/screens/add_task_screen.dart';

//  The AddTask class represents a widget that allows the user to add a new task. It uses a GestureDetector to detect taps and opens a modal bottom sheet containing the AddTaskScreen when tapped.
// The onTap callback shows a modal bottom sheet with a transparent background and scrolling behavior. The AddTaskScreen is displayed within this bottom sheet.
//  The widget contains a container with borders, and within it, there's another container with placeholder text for adding a new task.

//  La classe AddTask représente un widget permettant à l'utilisateur d'ajouter une nouvelle tâche. Elle utilise un GestureDetector pour détecter les tapes et ouvre une feuille inférieure modale contenant AddTaskScreen lorsqu'elle est tapée.
// Le rappel onTap affiche une feuille inférieure modale avec un arrière-plan transparent et un comportement de défilement. AddTaskScreen est affiché dans cette feuille inférieure.
//  Le widget contient un conteneur avec des bordures, et à l'intérieur, il y a un autre conteneur avec un texte de substitution pour ajouter une nouvelle tâche.

// AddTask class representing a widget to add a new task
class AddTask extends StatelessWidget {
  const AddTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // GestureDetector to detect tap and open the bottom sheet
    return GestureDetector(
      onTap: () {
        // Show modal bottom sheet with the AddTaskScreen
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          context: context,
          builder: (context) => SingleChildScrollView(
            child: Container(
              // Adjust padding based on the keyboard's presence
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const AddTaskScreen(), // Display AddTaskScreen
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
                  'Ajouter une nouvelle tâche...', // Placeholder text
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
