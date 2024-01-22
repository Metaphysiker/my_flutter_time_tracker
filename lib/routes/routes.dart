library routes;

import 'package:flutter/material.dart';
import 'package:my_flutter_time_tracker/classes/route_element.dart';
import 'package:my_flutter_time_tracker/pages/welcome_page.dart';
import 'package:my_flutter_time_tracker/pages/time_tracking_page.dart';

List<RouteElement> routes = [
  RouteElement(
      name: 'Flutter Time Tracker',
      path: '/',
      icon: const Icon(Icons.home),
      widget: const WelcomePage()),
  RouteElement(
      name: 'Time Tracking',
      path: '/time-tracking',
      icon: const Icon(Icons.lock_clock),
      widget: const TimeTrackingPage()),
  RouteElement(
      name: 'About',
      path: '/about',
      icon: const Icon(Icons.explore),
      widget: const WelcomePage()),
];
