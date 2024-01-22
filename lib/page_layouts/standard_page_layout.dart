import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_time_tracker/classes/route_element.dart';
import 'package:my_flutter_time_tracker/constants/constants.dart';
import 'package:my_flutter_time_tracker/page_layouts/i_page_layout.dart';
import 'package:my_flutter_time_tracker/routes/routes.dart' as routes;

class StandardPageLayout implements IPageLayout {
  @override
  Scaffold getScaffoldForDesktop(AppBar appBar, RouteElement routeElement) {
    return Scaffold(
        appBar: appBar,
        body: Row(children: [
          getNavigationRailForDesktop(routeElement),
          Expanded(
              child: Padding(
            padding: globalEdgeInsets,
            child: routeElement.widget,
          ))
        ]));
  }

  @override
  Scaffold getScaffoldForTablet(AppBar appBar, RouteElement routeElement) {
    return Scaffold(
        appBar: appBar,
        body: Row(children: [
          getNavigationRailForTablet(routeElement),
          Expanded(
              child: Padding(
            padding: globalEdgeInsets,
            child: routeElement.widget,
          ))
        ]));
  }

  @override
  Scaffold getScaffoldForMobile(AppBar appBar, RouteElement routeElement) {
    return Scaffold(
        appBar: appBar,
        body: Padding(
          padding: globalEdgeInsets,
          child: routeElement.widget,
        ),
        bottomNavigationBar: getNavigationBar(routeElement));
  }

  NavigationBar getNavigationBar(RouteElement routeElement) {
    var navigationBar = NavigationBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        onDestinationSelected: (int index) {
          context.go(routes.routes[index].path);
        },
        indicatorColor: const Color.fromRGBO(255, 193, 7, 1),
        selectedIndex: routes.routes.indexWhere((route) {
          return route.path == routeElement.path;
        }),
        destinations: routes.routes.map((route) {
          return NavigationDestination(
            icon: route.icon,
            label: route.name,
          );
        }).toList());
    return navigationBar;
  }

  NavigationRail getNavigationRailForDesktop(RouteElement routeElement) {
    return NavigationRail(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      labelType: NavigationRailLabelType.all,
      onDestinationSelected: (int index) {
        context.go(routes.routes[index].path);
      },
      indicatorColor: const Color.fromRGBO(255, 193, 7, 1),
      selectedIndex: routes.routes.indexWhere((route) {
        return route.path == routeElement.path;
      }),
      destinations: routes.routes.map((route) {
        return NavigationRailDestination(
          icon: route.icon,
          label: Text(route.name),
        );
      }).toList(),
    );
  }

  NavigationRail getNavigationRailForTablet(RouteElement routeElement) {
    return NavigationRail(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      onDestinationSelected: (int index) {
        context.go(routes.routes[index].path);
      },
      indicatorColor: const Color.fromRGBO(255, 193, 7, 1),
      selectedIndex: routes.routes.indexWhere((route) {
        return route.path == routeElement.path;
      }),
      destinations: routes.routes.map((route) {
        return NavigationRailDestination(
          icon: route.icon,
          label: Text(route.name),
        );
      }).toList(),
    );
  }

  @override
  String name = "StandardPageLayout";

  @override
  LayoutBuilder getLayoutBuilder(AppBar appBar, RouteElement routeElement) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return getScaffoldForDesktop(appBar, routeElement);
        } else if (constraints.maxWidth > 600) {
          return getScaffoldForTablet(appBar, routeElement);
        } else {
          return getScaffoldForMobile(appBar, routeElement);
        }
      },
    );
  }

  @override
  BuildContext context;
  StandardPageLayout({required this.context});
}
