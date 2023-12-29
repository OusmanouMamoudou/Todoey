import 'package:flutter/material.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({
    super.key,
    required this.isChecked,
    required this.function,
  });

  final bool? isChecked;
  final Function(bool?)? function;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: function,
    );
  }
}
