/// functions help reduce repetitive code and simplifies logic
/// TYPE FUNCTION_NAME(PARAMETER_TYPE PARAMETER_NAME) {
///   ...random code
///   return VALUE_OF_TYPE
/// }
/// the following function, addTwo returns an int and takes in a paramter of starting value of type int
/// the function returns the starting value + 2. (of type int)
int addTwo(int startingValue) {
  return startingValue + 2;
}

/// functions can have multiple parameters
/// the following function takes in 4 parameters and combines them into one
String makeIntoAddress(int postalCode, String addressLineOne,
    String addressLineTwo, int floorNumber) {
  return 'The address is: $postalCode $addressLineOne $addressLineTwo $floorNumber';
}

/// calling the function would look something like this:
void runCode() {
  // *void functions return nothing
  /// the position of parameters matters
  /// the first parameter [postalCode] will always have to be first
  makeIntoAddress(123456, 'street a', 'address line two', 46);
}

/// what if theres no second address line?
/// maybe you could just enter a blank like so:
void runCode2() {
  makeIntoAddress(123456, 'street a', '', 46);
}

/// OR you could make your paramter named. There are two kinds of parameters, positional (as shown above) and named.
/// you can have both parameters inside a function
void namedFunction(
  // *positional parameters should occur before named ones
  int positionalParameterOne,
  String positionalParameterTwo, {
  required String
      namedParameterOne, // a named parameter must either have a required keyword
  int namedParameterTwo = 34, // or have a default value
  int? namedParameterThree, // or be nullable
}) {}

void runCode3() {
  /// positional parameters must always be provided
  /// named parameters are optional not [required]
  namedFunction(1, 'two', namedParameterOne: '1');
  namedFunction(1, 'two',
      namedParameterOne: '1', namedParameterTwo: 5, namedParameterThree: 8);
}
