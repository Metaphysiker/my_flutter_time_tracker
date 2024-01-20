import 'package:flutter/material.dart';

abstract interface class IPageLayout {
  String name = "";
  Scaffold getScaffoldForMobile(AppBar appBar, NavigationBar navigationBar);
  Scaffold getScaffoldForDesktop(AppBar appBar, NavigationBar navigationBar);
}
