import 'package:flutter/material.dart';

// The MyCheckBox class represents a custom checkbox and takes two required parameters: isChecked (whether the checkbox is checked or not) and function (a callback function to be called when the checkbox state changes).
// The build method returns a standard Checkbox widget with the specified value and onChanged properties.

// La classe MyCheckBox représente une case à cocher personnalisée et prend deux paramètres requis : isChecked (si la case à cocher est cochée ou non) et function (une fonction de rappel à appeler lorsque l'état de la case à cocher change).
// La méthode build renvoie un widget Checkbox standard avec les propriétés spécifiées value et onChanged.

// MyCheckBox class representing a custom checkbox
class MyCheckBox extends StatelessWidget {
  const MyCheckBox({
    super.key,
    required this.isChecked,
    required this.function,
  });

  // Whether the checkbox is checked or not
  final bool? isChecked;

  // Callback function to be called when the checkbox state changes
  final Function(bool?)? function;

  @override
  Widget build(BuildContext context) {
    // Return a standard Checkbox widget with specified properties
    return Checkbox(
      value: isChecked, // Current state of the checkbox (checked or unchecked)
      onChanged: function, // Callback function to handle checkbox state changes
    );
  }
}
