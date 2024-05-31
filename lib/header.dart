import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final List<String> selectedChoices;
  final Function(String) onChoiceRemove;

  Header({required this.selectedChoices, required this.onChoiceRemove});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.deepPurple,
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 8.0,
        children: selectedChoices.map((choice) {
          return Chip(
            label: Text(choice),
            //onDeleted: () => onChoiceRemove(choice),
            backgroundColor: Colors.white30,
          );
        }).toList(),
      ),
    );
  }
}
