import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/tasks_screen.dart';

//  The code defines the main entry point for the "Todoey" app,
//creating an instance of MyApp and running it.
// In MyApp, the build method returns a ChangeNotifierProvider widget,
//providing the TaskData class for state management using the provider package.
// The dark theme is set for the entire application using ThemeData.dark.
// The home screen is set to be an instance of TasksScreen.
// The create callback in ChangeNotifierProvider creates an instance of TaskData,
// which will be available to all descendants in the widget tree.

//  Le code définit le point d'entrée principal de l'application "Todoey",
//crée une instance de MyApp et l'exécute.
//  Dans MyApp, la méthode build renvoie un widget ChangeNotifierProvider,
//fournissant la classe TaskData pour la gestion de l'état à l'aide du package provider.
//  Le thème sombre est défini pour toute l'application à l'aide de ThemeData.dark.
//  L'écran d'accueil est défini comme une instance de TasksScreen.
//  Le rappel create dans ChangeNotifierProvider crée une instance de TaskData,
// qui sera disponible pour tous les descendants dans l'arborescence des widgets.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      // Provide the TaskData using ChangeNotifierProvider for state management
      create: (context) => TaskData(),
      builder: (context, child) => MaterialApp(
        // Set the dark theme for the entire application
        theme: ThemeData.dark(useMaterial3: true),
        // Set the home screen as TasksScreen
        home: const TasksScreen(),
      ),
    );
  }
}
