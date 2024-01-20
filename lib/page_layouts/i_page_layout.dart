import 'package:flutter/material.dart';

abstract interface class IPageLayout {
  String name = "";
  BuildContext context;
  Scaffold getScaffoldForMobile(AppBar appBar, Widget page);
  Scaffold getScaffoldForDesktop(AppBar appBar, Widget page);
  Scaffold getScaffoldForTablet(AppBar appBar, Widget page);
  LayoutBuilder getLayoutBuilder(AppBar appBar, Widget page);
  IPageLayout({required this.context});
}
