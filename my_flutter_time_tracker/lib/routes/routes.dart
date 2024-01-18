library routes;

import 'package:flutter/material.dart';
import 'package:my_flutter_time_tracker/classes/route_element.dart';

List<RouteElement> routes = [
  RouteElement(name: 'welcome', path: '/', icon: const Icon(Icons.home)),
  RouteElement(name: 'abc', path: '/abc', icon: const Icon(Icons.explore)),
];
