// these are your project dependencies
import 'package:flutter/material.dart'; // (almost) always import material

/// this is the starting point of your project
/// all code in flutter starts from this function
void main() {
  /// this is the starting point for your flutter app
  /// runApp takes in 1 argument - a widget
  /// ALL COMPONENTS IN FLUTTER ARE WIDGETS
  /// ALL WIDGETS ARE CLASSES
  runApp(
    /// [MaterialApp] is a top level widget that should only be used once. Remember wrap your whole app in it.
    /// the most important argument is [home]
    const MaterialApp(
      /// [Scaffold] is a top level widget for an app page. Every new page should have its own scaffold.
      home: Scaffold(
        /// [Text] is a widget that has a string as the first parameter
        body: Text('Hello World'),
      ),
    ),
  );
}
