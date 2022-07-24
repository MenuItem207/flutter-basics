void main() {
  // lets say i have an address
  int postalCode = 123456;
  String street = '1 abc road';
  String unitNumber = '#1-1';

  // how do I combine all of these into 1 string to display?
  // one way is to add them, strings can be added to each other
  // any variable that is not a string must first be converted to a string
  // so
  String fullAddress = postalCode.toString() + street + unitNumber;
  print(fullAddress);

  // another way is string concatenation
  String concatAddress = 'Postal Code: $postalCode Street: $street $unitNumber';
  print(concatAddress);
}
