import 'package:flutter/material.dart';
import 'package:todoey/const.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  static mySnack(BuildContext context, text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: kBlack,
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
