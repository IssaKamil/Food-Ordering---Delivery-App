import 'package:flutter/material.dart';

class MySeperator extends StatelessWidget {
  const MySeperator({
    super.key,
    this.height = 1,
    required this.color,
  });

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final boxWidth = constraints.constrainWidth();
      const dashWith = 5.0;
      final dashHeight = height;
      final dashCount = (boxWidth / (1.2 * dashWith)).floor();
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(dashCount, (_) {
          return SizedBox(
            width: dashWith,
            height: dashHeight,
            child: DecoratedBox(
                decoration: BoxDecoration(
              color: color,
            )),
          );
        }),
      );
    });
  }
}