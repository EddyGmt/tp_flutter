import 'package:flutter/material.dart';

class ChoiceItems extends StatefulWidget {
  final Function(List<String>) onSelectionChanged;

  ChoiceItems({required this.onSelectionChanged});

  @override
  _ChoiceItemsState createState() => _ChoiceItemsState();
}

class _ChoiceItemsState extends State<ChoiceItems> {
  List<String> choices = [
    'Cinéma',
    'Pétanque',
    'Fitness',
    'League of Legends',
    'Basket',
    'Shopping',
    'Programmation'
  ];
  List<String> selectedChoices = [];

  void toggleSelection(String choice, bool selected) {
    setState(() {
      if (selected) {
        selectedChoices.add(choice);
      } else {
        selectedChoices.remove(choice);
      }
      widget.onSelectionChanged(selectedChoices);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: choices.map((choice) {
        return ChoiceChip(
          label: Text(choice),
          selected: selectedChoices.contains(choice),
          onSelected: (selected) {
            toggleSelection(choice, selected);
          },
        );
      }).toList(),
    );
  }
}
