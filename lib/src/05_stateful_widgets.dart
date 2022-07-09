import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// this is a [Stateful] widget
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // this is the build function where the children components are rendered.
  // it returns the children widgets
  @override
  Widget build(BuildContext context) {
    return const Text('This is a stateful widget');
  }
}

/// the difference between a stateful widget and a stateless widget is that a stateful widget can store state
/// what does that mean?

class StatefulWidgetWithSomeState extends StatefulWidget {
  const StatefulWidgetWithSomeState({Key? key})
      : super(key: key); // this is the widget constructor

  @override
  State<StatefulWidgetWithSomeState> createState() =>
      _StatefulWidgetWithSomeStateState();
}

class _StatefulWidgetWithSomeStateState
    extends State<StatefulWidgetWithSomeState> {
  // you can create variables on top of the build function here:
  int buttonPressed = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        buttonPressed = buttonPressed + 1;
        setState(() {}); // *you can only call setState in a stateful widget
      },
      child: Text('Button has been pressed $buttonPressed times'),
    );
  }
}
