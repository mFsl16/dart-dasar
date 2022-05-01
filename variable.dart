void main(List<String> args) {

  // initializing variable
  var name = 'Bob';

  // spesifying variable type
  Object specificName = 'Jhon';

  // explicit declaring name as string
  String stringName = 'Robert';

  // DEFAULT VALUE

  // nullable variable
  int? lineCount;
  assert(lineCount == null);

  // null safety variable
  int safeLineCount = 0;

  // late variable
  // declaring a non-nullable variable that's initialized after its declaration
  // lazily initializing a variable
  late String description;
  description = 'Feijoada!';
  print(description);

  // if you never intend to change variable then use final or const instead of var
  final nickname = 'alice'; // you can't change the value of final variable

  // use constant for compile-time constants variable
  const bar = 1000000;
  const double atm = 1.01325 * bar;

  // you can use const to create constant value
  // constant value can't be assigned a value
  var foo = const[];
  final barr = const[];
  const buzz = []; // equivalent to var buzz = const[];
}