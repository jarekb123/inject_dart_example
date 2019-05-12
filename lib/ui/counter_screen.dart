import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:inject_dart_example/bloc/counter_bloc.dart';

@provide
class CounterScreen extends StatelessWidget {
  final CounterBloc _counterBloc;

  const CounterScreen(this._counterBloc) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Screen')),
      body: BlocBuilder(
        bloc: _counterBloc,
        builder: (ctx, CounterState state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Counter value:'),
                Text('${state.value}', style: TextStyle(fontSize: 30)),
                RaisedButton(
                  child: Text('Go to Counter Events'),
                  onPressed: () => Navigator.pushNamed(context, '/counter_events'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
