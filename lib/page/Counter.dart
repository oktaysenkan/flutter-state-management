import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:testapp/store/CounterState.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPage createState() => _CounterPage();
}

class _CounterPage extends State<CounterPage> {
  handleButtonPress(CounterState counterState) {
    counterState.increment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Counter",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            context.watch<CounterState>().value.toString(),
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterState>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
