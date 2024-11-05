// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SearchEngine extends StatefulWidget {
  const SearchEngine({super.key});

  static const List<String> listItems = <String>[
    'Chicken burger',
    'Meat loaf',
    'Beef shawarma',
    'Meat burger',
    'Jollof rice',
    'Air-fried chicken',
    'Omelet with sauce',
    'Strewberry',
  ];

  @override
  State<SearchEngine> createState() => _SearchEngineState();
}

class _SearchEngineState extends State<SearchEngine> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
      child: Container(
        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable.empty();
            }
            return SearchEngine.listItems.where((String item) {
              return item.contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (String item) {
            print('The $item was selected');
          },
        ),
      ),
    );
  }
}
