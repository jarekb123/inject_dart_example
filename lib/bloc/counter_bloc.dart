import 'package:bloc/bloc.dart';
import 'package:inject/inject.dart';

@provide
@singleton
class CounterBloc extends Bloc<CounterEvent, CounterState> {

  @override
  CounterState get initialState => CounterState(0);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield CounterState(currentState.value + 1);
    } else if (event is DecrementEvent) {
      yield CounterState(currentState.value - 1);
    }
  }
}

class CounterState {
  final int value;

  CounterState(this.value);
}

abstract class CounterEvent {}

class IncrementEvent implements CounterEvent {}
class DecrementEvent implements CounterEvent {}