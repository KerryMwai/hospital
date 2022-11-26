import 'package:flutter_test/flutter_test.dart';

import 'calculator.dart';

void main() {
  late Calculator calc;

  setUp(() {
    calc = Calculator();
  });
  group("Testing the calculator", () {
    test("Test addition of two numbers", (() {
      // Step 1 creating an instance of the class
      // Step 2 gettting the result of the operation
      double result = calc.addTwoNumbers(200, 178);
      // Step 3 expectation
      expect(result, 378);
      expect(result, isNot(379));
    }));

    test("Test multiplication of two numbers", (() {
      // Step 1 creating an instance of the class
      // Step 2 gettting the result of the operation
      double result = calc.multiplyTwoNumbers(200, 178);
      // Step 3 expectation
      expect(result, 35600);
      expect(result, isNot(40000));
    }));
  });

  tearDownAll(() {
    print("We are done. Good to go");
  });
}
