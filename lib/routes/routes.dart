library routes;

import 'package:flutter/material.dart';
import 'package:my_flutter_time_tracker/classes/route_element.dart';
import 'package:my_flutter_time_tracker/pages/welcome_page.dart';

List<RouteElement> routes = [
  RouteElement(name: 'welcome', path: '/', icon: const Icon(Icons.home)),
  RouteElement(
      name: 'Time Tracking',
      path: '/time-tracking',
      icon: const Icon(Icons.lock_clock),
      widget: WelcomePage(title: "Time Tracking")),
  RouteElement(name: 'abc', path: '/abc', icon: const Icon(Icons.explore)),
];
