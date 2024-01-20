import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_time_tracker/constants/constants.dart';
import 'package:my_flutter_time_tracker/page_layouts/i_page_layout.dart';
import 'package:my_flutter_time_tracker/routes/routes.dart' as routes;

class StandardPageLayout implements IPageLayout {
  @override
  Scaffold getScaffoldForDesktop(AppBar appBar, Widget page) {
    return Scaffold(
        appBar: appBar,
        body: Row(children: [
          getNavigationRailForDesktop(),
          Expanded(
              child: Padding(
            padding: globalEdgeInsets,
            child: page,
          ))
        ]));
  }

  @override
  Scaffold getScaffoldForTablet(AppBar appBar, Widget page) {
    return Scaffold(
        appBar: appBar,
        body: Row(children: [
          getNavigationRailForTablet(),
          Expanded(
              child: Padding(
            padding: globalEdgeInsets,
            child: page,
          ))
        ]));
  }

  @override
  Scaffold getScaffoldForMobile(AppBar appBar, Widget page) {
    return Scaffold(
        appBar: appBar,
        body: Padding(
          padding: globalEdgeInsets,
          child: page,
        ),
        bottomNavigationBar: getNavigationBar());
  }

  NavigationBar getNavigationBar() {
    var navigationBar = NavigationBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
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

  NavigationRail getNavigationRailForDesktop() {
    return NavigationRail(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      labelType: NavigationRailLabelType.all,
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

  NavigationRail getNavigationRailForTablet() {
    return NavigationRail(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
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
        if (constraints.maxWidth > 800) {
          return getScaffoldForDesktop(appBar, page);
        } else if (constraints.maxWidth > 600) {
          return getScaffoldForTablet(appBar, page);
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
