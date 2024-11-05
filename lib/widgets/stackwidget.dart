// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FavoriteFoodStack extends StatelessWidget {
  FavoriteFoodStack({
    super.key,
    required this.colorFill,
    required this.topImage,
    required this.menuName,
    required this.iconColorFill,
    required this.priceColorFill,
    required this.price,
  });

  Color? colorFill;
  AssetImage? topImage;
  String? menuName;
  Color? iconColorFill;
  Color? priceColorFill;
  String? price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175.0,
      width: 150.0,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: 100.0,
              height: 200.0,
              color: colorFill,
            ),
          ),
          Positioned(
              top: -20.0,
              left: 30.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                    fit: BoxFit.fill,
                    width: 90.0,
                    height: 120.0,
                    image: topImage!),
              )),
          Positioned(
            bottom: 15.0,
            left: 10.0,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 55.0, 0.0),
                    child: Text(
                      menuName!,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 100.0, 0.0),
                    child: Text(
                      price!,
                      style: TextStyle(
                        color: priceColorFill!,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -5.0,
            right: -5.0,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  size: 40.0,
                  Icons.add_circle,
                  color: iconColorFill!,
                )),
          ),
        ],
      ),
    );
  }
}
