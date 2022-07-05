import 'package:flutter/material.dart'; // (almost) always import material
/// the previous example was pretty simple right?
/// but what if you want to do a little more than just displaying a single line of text
/// imagine if all the code was one huge block of text
/// that would be incredibly messy right?
/// introducing stateless widgets:

/// a widget is just a class
class GreetingWidget extends StatelessWidget {
  /// this is the class constructor
  const GreetingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is where we design the UI
    return Text('hello');
  }
}

/// to simplify the example_03:
// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: Text('Hello World'),
//       ),
//     ),
//   );
// }
// becomes:
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: GreetingWidget(),
    ));
  }
}

/// this allows us to break our app into smaller components
/// allowing code to be adjusted on a smaller scale

