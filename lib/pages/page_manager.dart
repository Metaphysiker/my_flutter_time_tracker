import 'package:flutter/material.dart';
import 'package:my_flutter_time_tracker/main.dart';

class PageManager extends StatefulWidget {
  final String pageName;

  const PageManager({super.key, required this.pageName});

  @override
  State<PageManager> createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  @override
  Widget build(BuildContext context) {
    if (widget.pageName == 'MyHomePagexx') {
      return MyHomePage(title: "swag");
    } else {
      return MyHomePage(title: "uuuuh");
    }
  }
}
