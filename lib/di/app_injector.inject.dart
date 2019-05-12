import 'app_injector.dart' as _i1;
import '../bloc/counter_bloc.dart' as _i2;
import 'dart:async' as _i3;
import '../main.dart' as _i4;
import '../ui/counter_screen.dart' as _i5;
import '../ui/counter_events_screen.dart' as _i6;

class AppInjector$Injector implements _i1.AppInjector {
  AppInjector$Injector._();

  _i2.CounterBloc _singletonCounterBloc;

  static _i3.Future<_i1.AppInjector> create() async {
    final injector = AppInjector$Injector._();

    return injector;
  }

  _i4.MyApp _createMyApp() =>
      _i4.MyApp(_createCounterScreen, _createCounterEventsScreen);
  _i5.CounterScreen _createCounterScreen() =>
      _i5.CounterScreen(_createCounterBloc());
  _i2.CounterBloc _createCounterBloc() =>
      _singletonCounterBloc ??= _i2.CounterBloc();
  _i6.CounterEventsScreen _createCounterEventsScreen() =>
      _i6.CounterEventsScreen(_createCounterBloc());
  @override
  _i4.MyApp get app => _createMyApp();
  @override
  _i5.CounterScreen get counterScreen => _createCounterScreen();
  @override
  _i6.CounterEventsScreen get counterEventsScreen =>
      _createCounterEventsScreen();
}
