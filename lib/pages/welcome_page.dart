import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("Flutter Time Tracker",
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
        const Text('Anmelden, Projekt auswählen und eintragen'),
      ],
    ));
  }
}
