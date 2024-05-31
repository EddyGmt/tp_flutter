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

  void toggleSelection(String choice) {
    setState(() {
      if (selectedChoices.contains(choice)) {
        selectedChoices.remove(choice);
      } else {
        selectedChoices.add(choice);
      }
      widget.onSelectionChanged(selectedChoices);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: choices.map((choice) {
        final isSelected = selectedChoices.contains(choice);
        return GestureDetector(
          onTap: () {
            toggleSelection(choice);
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 1.5),
            padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: isSelected ? Colors.amber : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: isSelected ? Colors.amber : Colors.transparent,
              ),
            ),
            child: Text(
              choice,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.black87,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
