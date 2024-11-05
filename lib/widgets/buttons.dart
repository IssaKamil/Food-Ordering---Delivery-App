import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.title, required this.buttonColor});

  final String? title;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(buttonColor)),
      color: buttonColor,
      onPressed: () {},
      icon: Text(title!),
    );
  }
}