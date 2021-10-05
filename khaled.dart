import 'dart:io';

class Kaa {
  int add(int firstNum, int secondNum) {
    return firstNum + secondNum;
  }

  int subtract(int firstNum, int secondNum) {
    return firstNum - secondNum;
  }

  int multiply(int firstNum, int secondNum) {
    return firstNum * secondNum;
  }

  double divide(int firstNum, int secondNum) {
    return firstNum / secondNum;
  }

  void main(List<String> args) {
    print("please enter your first number");
    int num1 = int.parse(stdin.readLineSync()!);
    print("please enter your scond number");
    int num2 = int.parse(stdin.readLineSync()!);
    print("Enter an operator (+, -, *, /): ");
    String operator = (stdin.readLineSync()!);
    int ruslt;

    switch (operator) {
      case "+":
        print(ruslt = num1 + num2);

        break;
      case "-":
        print("ruslt=num1 - num2");

        break;
      case "*":
        print("ruslt=num1 * num2");

        break;

      case "/":
        print("ruslt=num1 / num2");

        break;
      case "exit":
        exit(0);
        break;
      default:
        print("Input not recognized.");

        break;
    }
  }
}
