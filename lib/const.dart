import 'package:flutter/material.dart';

// Constants for color values
const kWhite = Colors.white;
const kBlack = Colors.black87;
// Constants for commonly used colors in the application.
//  Constantes pour les couleurs couramment utilisées dans l'application.

// Border radius for the main container
const kContainerBoxDecoration = BorderRadius.only(
  topLeft: Radius.circular(50),
  bottomLeft: Radius.circular(50),
  topRight: Radius.circular(100),
  bottomRight: Radius.circular(30),
);
// Border radius configuration for a container with specific rounded corners.
//  Configuration du rayon de la bordure pour un conteneur avec des coins
// arrondis spécifiques.

// BoxDecoration for containers with a white background and rounded corners
const kBoxDecoration = BoxDecoration(
  color: kWhite,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
    topLeft: Radius.circular(30),
  ),
);

// BoxDecoration for containers with a white background and rounded corners on the top 
//right and top left.
//  BoxDecoration pour les conteneurs avec un fond blanc et des coins arrondis 
//en haut à droite et en haut à gauche.

