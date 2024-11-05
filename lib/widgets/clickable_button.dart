import 'package:flutter/material.dart';

class ClickableButton extends StatelessWidget {
  const ClickableButton({
    super.key,
    this.buttonColor,
    required this.title,
    required this.titleColor,
    required this.width, 
    required this.heigth,
  });


  final Color? buttonColor;
  final String? title;
  final Color ? titleColor;
  final double ? width, heigth;
  void onPressed () { }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        color: buttonColor,
        border: const Border(
          top: BorderSide.none,
          bottom: BorderSide.none,
        ),
      ),
      child: Center(
        child: Text(
          title!,
          style: TextStyle(
            color: titleColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}