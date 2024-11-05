import 'package:cypherdevs_app/widgets/seperator.dart';
import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({
    super.key,
    required this.menuImage,
    required this.title,
    required this.price
  });

  final AssetImage? menuImage;
  final String? title;
  final String? price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.0,
      height: 250.0,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: 170.0,
              height: 100.0,
              fit: BoxFit.fill,
              image: menuImage!,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              price!,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 15.0,
              ),
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          const MySeperator(
            color: Colors.green,
          ),
          Transform.translate(
            offset: const Offset(0.0, -16.0),
            child: ListTile(
              contentPadding: const EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
              leading: const Text(
                'Add to cart',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              trailing: Icon(
                Icons.favorite_outline,
                color: Colors.grey[400],
                size: 20.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
