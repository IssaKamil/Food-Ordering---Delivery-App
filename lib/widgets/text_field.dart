import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.hintTitle,
      this.frontIcon,
      this.backIcon,
      required this.radius,
      this.frontIconColor,
      this.backIconColor,
      required this.hintTitleColor,
      });

  final String? hintTitle;
  final IconData? frontIcon;
  final IconData? backIcon;
  final Color? frontIconColor;
  final BorderRadius? radius;
  final Color? backIconColor;
  final Color? hintTitleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          isDense: true,
          hintText: hintTitle,
          hintStyle: TextStyle(
            color: hintTitleColor,
          ),
          border:
              OutlineInputBorder(borderRadius: radius!),
          prefixIcon: Icon(
            frontIcon,
            color: frontIconColor,
          ),
          suffixIcon: Icon(
            backIcon,
            color: backIconColor,
          )
        ),
      ),
    );
  }
}
