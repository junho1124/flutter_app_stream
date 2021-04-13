import 'dart:async';

class Counter {
  int _counter = 0;

  final _counterStreamContrller = StreamController<int>();

  Stream<int> get counterStream => _counterStreamContrller.stream;

  void increment() {
    _counter++;
    _counterStreamContrller.add(_counter);
  }

}