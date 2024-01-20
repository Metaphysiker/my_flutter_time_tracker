import 'package:flutter/material.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/navigation_bar.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:my_flutter_time_tracker/page_layouts/i_page_layout.dart';

class StandardPageLayout implements IPageLayout {
  @override
  Scaffold getScaffoldForDesktop(AppBar appBar, NavigationRail navigationRail) {
    return Scaffold(appBar: appBar, child: navigationRail);
  }

  @override
  Scaffold getScaffoldForMobile(AppBar appBar, NavigationBar navigationBar) {
    return Scaffold(appBar: appBar, bottomNavigationBar: navigationBar);
  }

  @override
  String name = "StandardPageLayout";
}
