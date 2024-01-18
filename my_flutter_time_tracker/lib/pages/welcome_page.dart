import 'package:flutter/material.dart';
import 'package:my_flutter_time_tracker/constants/constants.dart';

class WelcomePage extends StatelessWidget {
  final String title;
  const WelcomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: globalEdgeInsets,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text('We move under cover and we move as one'),
          const Text('Through the night, we have one shot to live another day'),
          const Text('We cannot let a stray gunshot give us away'),
          const Text('We will fight up close, seize the moment and stay in it'),
          const Text('It’s either that or meet the business end of a bayonet'),
          const Text('The code word is ‘Rochambeau,’ dig me?'),
          Text('Rochambeau!',
              style: DefaultTextStyle.of(context)
                  .style
                  .apply(fontSizeFactor: 2.0)),
        ],
      ),
    ));
    //return Text(title);
  }
}
