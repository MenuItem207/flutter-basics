void main() {
  // basic variables types
// int, double, String, bool
  int a = 5;
  double b = 5.5;
  String c = '';
  bool d = false;

// theres one more. Null. Null represents an absence of a value.
// any variable type can also be null even an int. So
  int e = 0; // is not null
// but
  int?
      f; // is null because it has not been assigned a value (ignoring the question mark)
// its the same as saying
// int? f = null;

// so what is the question mark.
// NULL SAFETY!!!!!!!!!!!
// a variable without a question can NEVER BE NULL
// a variable with a question mark CAN BE NULLABLE
// so
  int notNullableInt = 5; // can never be null
  notNullableInt = null; // cannot

  String? nullableString = ''; // is nullable
  nullableString = null; // works because nullable string can be null

  // another thing that you need to remember is that not nullable
  // variables MUST BE INITIALISED WITH A VALUE
  bool
      notNullableBool; // must have a value before its used i.e bool notNullableBool = true;
  bool? nullableBool; // does not need a value
}
