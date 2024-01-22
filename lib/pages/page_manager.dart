import 'package:flutter/material.dart';
import 'package:my_flutter_time_tracker/classes/route_element.dart';
import 'package:my_flutter_time_tracker/page_layouts/standard_page_layout.dart';

class PageManager extends StatefulWidget {
  final RouteElement routeElement;

  const PageManager({super.key, required this.routeElement});

  @override
  State<PageManager> createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  @override
  Widget build(BuildContext context) {
    var standardPageLayout = StandardPageLayout(context: context);
    var appBar = AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.routeElement.name),
    );
    return standardPageLayout.getLayoutBuilder(appBar, widget.routeElement);
  }
}
