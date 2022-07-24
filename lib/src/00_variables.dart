void main() {
  // a variable is a container for a value
  // you can think of a variable as a sort of container that only allows one type of value.
  // so a int container can only store int
  // so when I say something like
  int newInstance = 5;
  // I'm creating a new container called newInstance that only stores int values and currently stores the value 5
  // so when I say something else like
  int otherInstance = 8;
  // I created a separate container known as otherInstance that only stores int values and currently stores the value 8
  // So these 'containers' are known as instances. Each is its own instance.

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

  // there are others like List and Map
  // what is a List
  List mylist = [
    1, // index 0
    2, // index 1
    3,
    4,
    5
  ]; // a list is just a sequential collection of data
  // each list element (1,2,3,4,5) has a position, starting from zero
  // so position zero = 1, position one = 2
  // i.e mylist[0] results in a value of one because the first index (0), has a value of one
  int indexZero = 0;
  mylist[indexZero]; // *one
  // removeAt removesAT the INDEX. so calling mylist.removeAt(0) will remove the number one.
}
