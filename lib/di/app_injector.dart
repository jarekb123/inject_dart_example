import 'package:inject/inject.dart';
import 'package:inject_dart_example/main.dart';
import 'package:inject_dart_example/ui/counter_events_screen.dart';
import 'package:inject_dart_example/ui/counter_screen.dart';


import 'app_injector.inject.dart' as g;

@Injector()
abstract class AppInjector {
  @provide
  MyApp get app;

  @provide
  CounterScreen get counterScreen;

  @provide
  CounterEventsScreen get counterEventsScreen;

  static Future<AppInjector> create() {
    return g.AppInjector$Injector.create();
  }
}
