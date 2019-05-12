import 'package:inject/inject.dart';
import 'package:flutter/material.dart';
import 'package:inject_dart_example/ui/counter_events_screen.dart';
import 'package:inject_dart_example/ui/counter_screen.dart';

import 'di/app_injector.dart';

typedef Provider<T> = T Function();

void main() async {
  final container = await AppInjector.create();
  runApp(container.app);
}

@provide
class MyApp extends StatelessWidget {
  final Provider<CounterScreen> counterScreen;
  final Provider<CounterEventsScreen> counterEventsScreen;

  MyApp(this.counterScreen, this.counterEventsScreen) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: counterScreen()),
      routes: {
        '/counter': (_) => counterScreen(),
        '/counter_events': (_) => counterEventsScreen()
      },
    );
  }
}
