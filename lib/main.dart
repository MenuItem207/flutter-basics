import 'package:flutter/material.dart';

void main() {
  runApp(const Example3());
}

/* common widgets
<top level>
1. MaterialApp - wrap around app
2. Scaffold - wrap around page

<normal>
3. Container
4. Card
5. GestureDetector
6. Row, Column, Stack
7. Text
8. TextField
9. ListView
*/

class Example1 extends StatelessWidget {
  const Example1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // every app starts a material app
      home: Scaffold(
        // every page starts with a scaffold
        backgroundColor: Colors.blue,
        body: Container(
          height: 200,
          width: double.infinity,
          color: Colors.orange,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'xingzhi',
            ),
          ),
        ),
      ),
    );
  }
}

class Example2 extends StatelessWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // every app starts a material app
      home: Scaffold(
        // every page starts with a scaffold
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Container(
              height: 200,
              width: 100,
              color: Colors.orange,
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    print('hi');
                  },
                  child: Text(
                    'xingzhi',
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.brown,
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextField(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Example3 extends StatefulWidget {
  const Example3({Key? key}) : super(key: key);

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  String xingzhi = 'zingzhi'; // label
  int count = 0; // store value <state>
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(xingzhi +
                  count
                      .toString()), // Text takes in String as a first parameter, count is a int so toString() converts it to String
              GestureDetector(
                onTap: () {
                  count++; // add 1
                  print(count);
                  setState(() {}); // tells flutter to rebuild widget
                },
                child: Container(height: 150, width: 150, color: Colors.blue),
              ),
              ThisIsAStatelessWidget('xingzhi'),
            ],
          ),
        ),
      ),
    );
  }
}

/// used for rendering components that do not need state
/// the component will not update after being rendered.
class ThisIsAStatelessWidget extends StatelessWidget {
  final String
      a; // for widgets, the variable you want to intialise with constructor must be final
  const ThisIsAStatelessWidget(this.a, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // styling is done here
    return Text(a);
  }
}

/// used for rendering components that can have a updated state
class ThisIsAStatefulWidget extends StatefulWidget {
  final String a;
  const ThisIsAStatefulWidget(this.a, {Key? key}) : super(key: key);

  @override
  State<ThisIsAStatefulWidget> createState() => _ThisIsAStatefulWidgetState();
}

class _ThisIsAStatefulWidgetState extends State<ThisIsAStatefulWidget> {
  int b = 4; // can update state in a stateful widget
  @override
  Widget build(BuildContext context) {
    // styling is done here
    return GestureDetector(
      onTap: () {
        b = 5;
        setState(() {});
      },
      child: Text(widget.a),
    ); // to accces variables initialised in the constructor, call widget.variable i.e widget.a
  }
}

/*
User
name
age
acount value
*/
class Person {
  // constructor
  Person(this.name, this.age);

  String? name;
  int? age;
}

class Group {
  Person person1 = Person('xzingzhi', 24);
  Person person2 = Person('xzingzhi', 25);
}

/*
Group group = Group();
group.person1.name
*/
