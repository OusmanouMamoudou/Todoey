import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppp(),
    );
  }
}

class MyAppp extends StatelessWidget {
  const MyAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyData>(
      create: (context) => MyData(),
      builder: (context, child) => Scaffold(
          appBar: AppBar(
            title: Text(Provider.of<MyData>(context).data),
          ),
          body: const Column(children: [
            MyText(),
            Level1(),
          ])),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<MyData>(context).data);
    ;
  }
}

class Level1 extends StatelessWidget {
  const Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Level2();
  }
}

class Level3 extends StatelessWidget {
  const Level3({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<MyData>(context).data);
  }
}

class Level2 extends StatelessWidget {
  const Level2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Level3(), MyTextField()],
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newValue) {
        Provider.of<MyData>(context, listen: false).changeData(newValue);
      },
    );
  }
}

class MyData extends ChangeNotifier {
  String data = 'OKKK';

  void changeData(String newValue) {
    data = newValue;
    notifyListeners();
  }
}
