import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_time_tracker/page_layouts/i_page_layout.dart';
import 'package:my_flutter_time_tracker/pages/welcome_page.dart';
import 'package:my_flutter_time_tracker/routes/routes.dart' as routes;

class StandardPageLayout implements IPageLayout {
  @override
  Scaffold getScaffoldForDesktop(AppBar appBar, Widget page) {
    return Scaffold(
        appBar: appBar,
        body: Row(children: [getNavigationRail(), Expanded(child: page)]));
  }

  @override
  Scaffold getScaffoldForMobile(AppBar appBar, Widget page) {
    return Scaffold(
        appBar: appBar, body: page, bottomNavigationBar: getNavigationBar());
  }

  NavigationBar getNavigationBar() {
    var navigationBar = NavigationBar(
        onDestinationSelected: (int index) {
          context.go(routes.routes[index].path);
        },
        indicatorColor: Colors.amber,
        selectedIndex: 0,
        destinations: routes.routes.map((route) {
          return NavigationDestination(
            icon: route.icon,
            label: route.name,
          );
        }).toList());
    return navigationBar;
  }

  NavigationRail getNavigationRail() {
    return NavigationRail(
      onDestinationSelected: (int index) {
        context.go(routes.routes[index].path);
      },
      destinations: routes.routes.map((route) {
        return NavigationRailDestination(
          icon: route.icon,
          label: Text(route.name),
        );
      }).toList(),
      selectedIndex: null,
    );
  }

  @override
  String name = "StandardPageLayout";

  @override
  LayoutBuilder getLayoutBuilder(AppBar appBar, Widget page) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return getScaffoldForDesktop(appBar, page);
        } else {
          return getScaffoldForMobile(appBar, page);
        }
      },
    );
  }

  @override
  BuildContext context;
  StandardPageLayout({required this.context});
}
