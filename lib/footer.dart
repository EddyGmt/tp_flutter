import 'package:flutter/material.dart';
import 'choice_items.dart';

class Footer extends StatefulWidget {
  final Function(List<String>) onSelectionChanged;

  Footer({required this.onSelectionChanged});

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ChoiceItems(onSelectionChanged: widget.onSelectionChanged),
    );
  }
}
