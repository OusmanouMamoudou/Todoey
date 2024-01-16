import 'package:flutter/material.dart';
import 'package:todoey/const.dart';

//  The MySnackBar class provides a static method called mySnack for displaying a custom SnackBar with the specified text.
//  The mySnack method uses ScaffoldMessenger.of(context).showSnackBar to display a SnackBar. The SnackBar has a custom background color (kBlack) and contains a centered Text widget with specific styling.
//  The build method returns a Placeholder widget as a placeholder for the build requirement of the StatelessWidget class.

// La classe MySnackBar fournit une méthode statique appelée mySnack pour afficher un SnackBar personnalisé avec le texte spécifié.
// La méthode mySnack utilise ScaffoldMessenger.of(context).showSnackBar pour afficher un SnackBar. Le SnackBar a une couleur de fond personnalisée (kBlack) et contient un widget Text centré avec un style spécifique.
// La méthode build renvoie un widget Placeholder en tant que substitut pour la condition de construction de la classe StatelessWidget

// MySnackBar class for displaying custom SnackBars
class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  // Static method for showing a custom SnackBar with specified text
  static mySnack(BuildContext context, text) {
    // Show a SnackBar with specified properties
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: kBlack, // Background color of the SnackBar
      content: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.redAccent,
          ),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
