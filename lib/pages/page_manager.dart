import 'package:flutter/material.dart';
import 'package:my_flutter_time_tracker/main.dart';
import 'package:my_flutter_time_tracker/page_layouts/standard_page_layout.dart';
import 'package:my_flutter_time_tracker/pages/welcome_page.dart';

class PageManager extends StatefulWidget {
  final String pageName;

  const PageManager({super.key, required this.pageName});

  @override
  State<PageManager> createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  @override
  Widget build(BuildContext context) {
    var standardPageLayout = StandardPageLayout(context: context);

    var appBar2 = AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.pageName),
    );

    if (widget.pageName == 'MyHomePagexx') {
      return standardPageLayout.getLayoutBuilder(
          appBar2, WelcomePage(title: widget.pageName));
    } else {
      return standardPageLayout.getLayoutBuilder(
          appBar2, WelcomePage(title: widget.pageName));
    }
  }
}
