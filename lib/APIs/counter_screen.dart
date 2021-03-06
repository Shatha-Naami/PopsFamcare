import 'package:counterapi/api.dart';
import 'package:famcare/APIs/client.dart';
import 'package:famcare/APIs/counter_bloc.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  final client = Client();

  @override
  Widget build(BuildContext context) {
    final _bloc = CounterBloc(client);

    return CounterBlocContext(
        child: MaterialApp(
          title: 'Counter App',
          home: MyHomePage(title: 'Counter App Home Page'),
        ),
        bloc: _bloc);
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = CounterBlocContext.of(context).bloc;
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
          child: StreamBuilder(
              stream: bloc.counter,
              builder: (BuildContext context, AsyncSnapshot<Counter> snapshot) {
                if (snapshot.hasData) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'You have pushed the button this many times:',
                        ),
                        Text(
                          '${snapshot.data.amount.toString()}',
                          key: Key('counter'),
                          style: Theme.of(context).textTheme.display1,
                        )
                      ]);
                }
                return Container();
              })),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            // Provide a Key to the button. This allows us to find this
            // specific button and tap it inside the test suite.
            key: Key('increment'),
            onPressed: () => bloc.counterInc(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            // Provide a Key to the button. This allows us to find this
            // specific button and tap it inside the test suite.
            key: Key('reset'),
            onPressed: () => bloc.counterReset(),
            tooltip: 'reset',
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

class CounterBlocContext extends InheritedWidget {
  final CounterBloc bloc;

  CounterBlocContext({Key key, @required this.bloc, @required Widget child})
      : assert(bloc != null),
        assert(child != null),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  // walk up the widget tree to find this widget as it is the base widget for everything above the MaterialApp
  static CounterBlocContext of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CounterBlocContext);
  }
}
