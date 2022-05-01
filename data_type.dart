void main(List<String> args) {

  // NUMBER
  // int, number without decimal point
  var x = 1;
  var hex = 0xDEADBEEF;
  var exponent = 8e5;

  // double, number include decimal point
  var y = 1.1;
  var exponentDouble = 1.42e5;

  // both int and double with num
  num d = 1;
  d += 2.5; // d can have both int and double

  // turn number to string, or vice versa
  // string to int
  var one = int.parse('1');
  assert(one == 1);

  // string to double
  var twoPointOne = double.parse('2.1');

  // int to string
  var stringOne = one.toString();
  assert(stringOne == '1');

  // double to string
  var stringTwoPointOne = twoPointOne.toString();
  assert(stringTwoPointOne == '2.1');

  // STRING
  // can use single or double quotes to create a string
  var s1 = 'Single quote work well for string literals.';
  var s2 = "Double quote work just as well";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  // put the value of an expression with &{expression}
  var expression = 'string interpolation';
  assert('Dart has $expression, which is very handy.' == 'Dart has string interpolation, which is very handy.');

  // concatenate string with line break
  var withLineBreak = 'String'
      'concatenation'
      "work even over line breaks";
  assert(withLineBreak == 'Stringconcatenationwork even over line breaks');

  // concatenate string with + operation
  var withPlusOperator = 'The' + 'operator' + 'works' + "as well.";
  assert(withPlusOperator == 'Theoperatorworksas well.');

  // create multiline string with triple single or double quote
  var tripleSingleQuote = '''
  you can create multiline string
  with triple single
  quote.
  ''';
  var tripleDoubleQuote = """
  triple double quote
  work as
  well
  """;

  // BOOLEAN

  // create a raw string with 'r'
  var rawString = r'In a raw String, not even \n get special treatment.';

  // To represent boolean values, Dart has a type named bool
  var str = '';
  var isStrEmpty = str.isEmpty;
  assert(isStrEmpty); // should be true

  // LIST
  // In dart arrays is a list objects
  var aList = [1, 2, 3];
  var venichel = [
    'Car',
    'Plane',
    'Boat'
  ];
  assert(aList.length == 3);
  assert(venichel[0] == 'Car');




}