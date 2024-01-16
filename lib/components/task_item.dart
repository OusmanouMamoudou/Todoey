import 'package:flutter/material.dart';

//  The TaskItem class represents each task item in the list. It utilizes the ListTile widget to display the task name, checkbox, and handle long-press actions.
//  The Text widget is used to display the task name with specific styling based on its completion status (checked or unchecked).
//  The onLongPress property is set to the delFunction callback to handle the long-press action, triggering the deletion of the task.
// The trailing property contains a Checkbox widget to allow the user to mark the task as done.

//  La classe TaskItem représente chaque élément de tâche dans la liste. Elle utilise le widget ListTile pour afficher le nom de la tâche, la case à cocher et gérer les actions de longue pression.
//  Le widget Text est utilisé pour afficher le nom de la tâche avec un style spécifique en fonction de son état d'achèvement (coché ou non coché).
//  La propriété onLongPress est définie sur la fonction de rappel delFunction pour gérer l'action de longue pression, déclenchant la suppression de la tâche.
//  La propriété trailing contient un widget Checkbox permettant à l'utilisateur de marquer la tâche comme effectuée

// TaskItem class to represent each task item in the list
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
    // ListTile widget is used for each task item
    return ListTile(
      // Display the task name with specific styling based on completion status
      title: Text(
        name,
        style: isChecked
            ? const TextStyle(
                decoration: TextDecoration.lineThrough,
                fontWeight: FontWeight.bold)
            : const TextStyle(fontSize: 18, letterSpacing: 1.5),
      ),
      // Perform the delete action on long press
      onLongPress: delFunction,
      // Checkbox for marking the task as done
      trailing: Checkbox(
        value: isChecked,
        onChanged: function,
      ),
    );
  }
}
