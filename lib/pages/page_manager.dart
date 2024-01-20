import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_time_tracker/main.dart';
import 'package:my_flutter_time_tracker/classes/page_layout_generator.dart'
    as PageLayoutGenerator;

class PageManager extends StatefulWidget {
  final String pageName;

  const PageManager({super.key, required this.pageName});

  @override
  State<PageManager> createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  @override
  Widget build(BuildContext context) {
    var pageLayoutGenerator =
        PageLayoutGenerator.PageLayoutGenerator(name: "swag", path: "swag");
    var appBar2 = AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(widget.pageName),
    );
    var navigationBar = NavigationBar(
      onDestinationSelected: (int index) {
        context.go('/abc');
        setState(() {
          print(index);
        });
      },
      indicatorColor: Colors.amber,
      selectedIndex: 0,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        NavigationDestination(
          icon: Icon(Icons.history),
          label: 'History',
        )
      ],
    );

    if (widget.pageName == 'MyHomePagexx') {
      return MyHomePage(title: "swag");
    } else {
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return Text("big");
          } else {
            return pageLayoutGenerator.getScaffoldForMobile(
                appBar2, navigationBar);
          }
        },
      );
    }
  }
}
