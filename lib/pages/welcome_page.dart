import 'package:flutter/material.dart';
import 'package:my_flutter_time_tracker/constants/constants.dart';

class WelcomePage extends StatelessWidget {
  final String title;
  const WelcomePage({super.key, required this.title});

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
    //return Text(title);
  }
}
