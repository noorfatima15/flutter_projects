import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstValue = ''.obs;
  var secondValue = ''.obs;
  var operator = ''.obs;
  var results = ''.obs;

  addDigits(String number) {
    if (results.value == '0') return results.value = number;

    if (results.value == '-0') {
      return results.value = '-' + number;
    }

    results.value = results.value + number;
  }

  clearAll() {
    firstValue.value = '0';
    secondValue.value = '0';
    results.value = '0';
    operator.value = '';
  }

  decimalFunction() {
    if (results.contains('.')) return;

    if (results.startsWith('0')) {
      return results.value = '0.';
    } else {
      results.value = results.value + '.';
    }
  }

  resultFunction() {
    double num1 = double.parse(firstValue.value);
    double num2 = double.parse(secondValue.value);

    secondValue.value = results.value;

    switch (operator.value) {
      case '+':
        results.value = '${num1 + num2}';
        break;
      case '-':
        results.value = '${num1 - num2}';
        break;
      case '/':
        results.value = '${num1 / num2}';
        break;
      case 'x':
        results.value = '${num1 * num2}';
        break;

      default:
        return;
    }

    if (results.value.endsWith('.0')) {
      results.value = results.value.substring(0, results.value.length - 2);
    }
  }

  operationFunction(String operation) {
    operator.value = operation;
    firstValue.value = results.value;
    results.value = '0';
  }
}
