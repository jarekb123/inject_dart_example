import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inject/inject.dart';
import 'package:inject_dart_example/bloc/counter_bloc.dart';

@provide
class CounterEventsScreen extends StatelessWidget {
  final CounterBloc _counterBloc;

  const CounterEventsScreen(this._counterBloc) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Events')),
      body: BlocBuilder(
        bloc: _counterBloc,
        builder: (ctx, CounterState state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Current value: ${state.value}'),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text('+'),
                    onPressed: () => _counterBloc.dispatch(IncrementEvent()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text('-'),
                    onPressed: () => _counterBloc.dispatch(DecrementEvent()),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
