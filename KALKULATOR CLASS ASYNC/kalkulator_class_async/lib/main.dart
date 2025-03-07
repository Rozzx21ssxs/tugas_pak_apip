import 'dart:async';
import 'dart:io';

class Calculator {
  Future<double> add(double a, double b) async {
    return a + b;
  }

  Future<double> subtract(double a, double b) async {
    return a - b;
  }

  Future<double> multiply(double a, double b) async {
    return a * b;
  }

  Future<double> divide(double a, double b) async {
    if (b == 0) {
      throw Exception("Error: Division by zero");
    }
    return a / b;
  }
}

Future<double> getNumberFromUser(String prompt) async {
  stdout.write(prompt);
  return double.parse(stdin.readLineSync()!);
}

Future<void> main() async {
  var calculator = Calculator();

  stdout.write("Pilih operasi (+, -, *, /): ");
  String operation = stdin.readLineSync()!;

  double num1 = await getNumberFromUser("Masukkan angka pertama: ");
  double num2 = await getNumberFromUser("Masukkan angka kedua: ");

  try {
    double result;
    switch (operation) {
      case '+':
        result = await calculator.add(num1, num2);
        break;
      case '-':
        result = await calculator.subtract(num1, num2);
        break;
      case '*':
        result = await calculator.multiply(num1, num2);
        break;
      case '/':
        result = await calculator.divide(num1, num2);
        break;
      default:
        print("Operasi tidak valid.");
        return;
    }
    print("Hasil: $result");
  } catch (e) {
    print(e);
  }
}