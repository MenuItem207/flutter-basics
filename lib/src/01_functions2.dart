import 'package:flutter/material.dart';

/// in this section we'll discuss variable scopes

// I have a variable called abc here with the value of 5
int abc = 5;

void doSomething() {
  abc = abc + 5; // tip: you can also do abc += 5;
}

// what would calling this function do? i.e:
// void main() {
//   doSomething();
//   print(abc); // 5
// }
// it will add 5 to abc so abc would be = 5

int abcd = 1;

void doSomethingElse() {
  int abcd = 8;
  abcd += 2;
}

// what would calling this new function do?
// void main() {
//   doSomethingElse();
//   print(abcd); // what would the value here be
// }

// the answer is NOT 10
// the answer is 1
// why did doSomethingElse not change the value of abcd?
// variable initialised in a function are LOCAL
// variables initialised outside of a function are GLOBAL
// basically, GLOBAL variables can be accessed and modified anywhere
// LOCAL variables exist only within their SCOPE (function)
// so when I do
int abcde =
    1; // I created a GLOBAL variable because this variable is not within any function

void doSomethingElseAgain() {
  int abcde =
      5; // i created a LOCAL variable within the function. This LOCAL variable instance exists ONLY within this function
  // in this function there are currently TWO instance of abcde. One is the GLOBAL abcde and one is the LOCAL abcde
  // which abcde will be modifed if I do something like this:
  abcde += 8;
  // the LOCAL one.
  // Because if there are GLOBAL variables with the same name, only the LOCAL variable will be valid
}

// void main() {
//   abcde += 3; // which instance is it referring to? GLOBAL or LOCAL
//   // GLOBAL
// }

// remember, a LOCAL variable only exists within its scope
int a = 5; // a can be accessed anywhere
void main() {
  print(a);
  int b = 6; // b can only be accesssed within this function
}

print(b); // can't do this because b only exists within the curly braces of main()

void doSomethingElseOnceAgain() {
  int c = 7; // c can only be accessed within this function
  print(b); // b doesn't exist here, only within main()
  print(a); // a is GLOBAL
}

// lets look at scope within a flutter widget
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // i create an instance of a variable here
  int variable1 = 5;
  @override
  Widget build(BuildContext context) {
    int variable2 = 3;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            int avariable = 5; // this variable is only exist within this function
            print(variable1);
            print(variable2);
          },
        ),
        GestureDetector(
          onTap: () {
            print(variable1);
            print(variable2);
            print(avariable); // this variable doesnt exist
          },
        ),
      ],
    );
  }
}