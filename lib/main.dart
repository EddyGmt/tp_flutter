import 'package:flutter/material.dart';
import 'header.dart';
import 'footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
               'Vos choix :',
                    style: TextStyle(
                        color: Colors.white
                    )
                ),
              Text(
                'Cliquez sur les choix du dessous!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),

          backgroundColor: Colors.deepPurple,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> selectedChoices = [];

  void onSelectionChanged(List<String> newSelectedChoices) {
    setState(() {
      selectedChoices = newSelectedChoices;
    });
  }

  void onChoiceRemoved(String choice) {
    setState(() {
      selectedChoices.remove(choice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(
          selectedChoices: selectedChoices,
          onChoiceRemove: onChoiceRemoved,
        ),
        Expanded(
          child: Footer(
            onSelectionChanged: onSelectionChanged,
          ),
        ),
      ],
    );
  }
}
