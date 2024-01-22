import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_time_tracker/pages/page_manager.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:my_flutter_time_tracker/routes/routes.dart' as routes;

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
    );
  }
}

final _router = GoRouter(
  initialLocation: '/',
  routes: routes.routes.map((routeElement) {
    return GoRoute(
      name: routeElement.name,
      path: routeElement.path,
      builder: (context, state) => PageManager(
        routeElement: routeElement,
      ),
    );
  }).toList(),
);
