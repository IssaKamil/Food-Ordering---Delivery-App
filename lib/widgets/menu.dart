import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({
    super.key,
    required this.foodImage,
    required this.title,
    required this.distance,
    required this.review,
  });

  final AssetImage foodImage;
  final String? title;
  final String? distance;
  final String? review;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.0,
      height: 155.0,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              fit: BoxFit.fill,
              width: 170.0,
              height: 100.0,
              image: foodImage,
            ),
          ),
          const SizedBox(height: 3.0,),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title!,
            ),
          ),
          const SizedBox(height: 8.0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: SizedBox(
              width: 170.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    distance!,
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  const SizedBox(
                    width: 9.0,
                  ),
                  Text(
                    review!,
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amberAccent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
