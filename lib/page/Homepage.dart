import 'package:flutter/material.dart';
import 'package:testapp/page/Counter.dart';
import 'package:provider/provider.dart';
import 'package:testapp/store/CounterState.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  handleButtonPress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CounterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              context.watch<CounterState>().value.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: handleButtonPress,
        tooltip: 'Increment',
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}
