import 'dart:io';

void main() {
  // Declaring variables
  double numOne, numTwo;
  String operation;

  // take in numOne
  while (true) {
    try {
      print("Enter a number:  ");
      numOne = double.parse(stdin.readLineSync()!);
      break;
    } on FormatException {
      print('Invalid input. Please enter a valid number.');
    }
  }

  // take in numTwo
  while (true) {
    try {
      print("Enter another number: ");
      numTwo = double.parse(stdin.readLineSync()!);
      break;
    } on FormatException {
      print('Invalid input. Please enter a valid number.');
    }
  }

  // decide on the operation (*, /, +, -)
  while (true) {
    print("What operation do you want to perform on these two numbers: +, -, *, or /?");
    operation = stdin.readLineSync()!;

    if (operation == "+" || operation == "-" || operation == "*" || operation == "/") {
      break;
    } else {
      print("That is not an available option.");
    }
  }

  // complete operation and print result to user
  switch (operation) {
    case "+":
      print("$numOne + $numTwo  = ${numOne + numTwo}");
      break;
    case "-":
      print("$numOne - $numTwo = ${numOne - numTwo}");
      break;
    case "*":
      print("$numOne * $numTwo = ${numOne * numTwo}");
      break;
    case "/":
      if (numTwo == 0) {
        print("Cannot divide by zero.");
      } else {
        print("$numOne / $numTwo = ${numOne / numTwo}");
      }
      break;
    default:
      print("Unknown operation");
      break;
  }
}