import 'package:flutter/material.dart';

class PageLayoutGenerator {
  String name;
  String path;

  void doSomething(String Function(int) callback) {
    print(callback(1));
  }

  Scaffold getScaffoldForMobile(AppBar appBar, NavigationBar navigationBar) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: navigationBar,
      body: Center(
        child: Text("small"),
      ),
    );
  }

  Scaffold getScaffoldForDesktop(AppBar appBar, NavigationBar navigationBar) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: navigationBar,
      body: Center(
        child: Text("small"),
      ),
    );
  }

  PageLayoutGenerator({required this.name, required this.path});
}
