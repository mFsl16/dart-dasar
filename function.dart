void main(List<String> args) {

  // FUNCTION
  // Dart is a true object-oriented language, so even functions are objects and have a type, Function.
  bool isNoble(int atomicNumber) {
    return atomicNumber != null;
  }

  // the function still work if you omit the types
  bool isString(someString) {
    return someString is String;
  }
  assert(isString("someString"));

  // for the function that contain just one expression, you can use a shorthand syntax
  bool isInt(someInt) => someInt is int;
  assert(isInt(2));

  // Parameter
  // named parameter
  bool isIntNull({int? a}) {
    return a != null;
  }
  assert(isIntNull(a: 1));

  // add required to set parameter as mandatory
  String sayHello({required String name}) {
    return "Helo ${name}";
  }
  assert("Helo faisal" == sayHello(name: "faisal"));

  // Optional positional parameter
  // wraping parameter with [] marks them as an optional parameter
  String say(String from, String msg, [String? device]) {
    var result = "$from say $msg";
    if (device != null) {
      result = '$result with $device';
    }
    return result;
  }

  // calling function without optional parametera
  assert(say('Bob', 'Howdy') == 'Bob say Howdy');

  // calling function with optional parameter
  assert(say('Bob', 'Howdy', 'Iphone') == 'Bob say Howdy with Iphone');

  // Default parameter value
  // you can use = to define default value for optional parameter
  bool enableFlag({bool bold = false, bool hidden = false}) {
    return bold == hidden;
  }
  assert(enableFlag());

  // Anonymous function
  // you can create nameless function, you migh assign an anonymous function to a variable
  const list = ['apple', 'banana', 'orange'];
  // create anonymous function inside foreach
  list.forEach((item) {
    print(item);
  });

  // Lexical Scope
  // dart is lexically scope language, wich mean tha the scope of variable is determined statically
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
    nestedFunction();
  }

  myFunction();
}