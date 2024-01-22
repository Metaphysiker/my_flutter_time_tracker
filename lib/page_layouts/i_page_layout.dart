import 'package:flutter/material.dart';
import 'package:my_flutter_time_tracker/classes/route_element.dart';

abstract interface class IPageLayout {
  String name = "";
  BuildContext context;
  Scaffold getScaffoldForMobile(AppBar appBar, RouteElement routeElement);
  Scaffold getScaffoldForDesktop(AppBar appBar, RouteElement routeElement);
  Scaffold getScaffoldForTablet(AppBar appBar, RouteElement routeElement);
  LayoutBuilder getLayoutBuilder(AppBar appBar, RouteElement routeElement);
  IPageLayout({required this.context});
}
