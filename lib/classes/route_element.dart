import 'package:flutter/material.dart';

class RouteElement {
  String name;
  String path;
  Icon icon = const Icon(Icons.explore);
  Widget widget = const Text('no widget');
  RouteElement(
      {required this.name,
      required this.path,
      this.icon = const Icon(Icons.explore),
      this.widget = const Text('no widget')});
}
