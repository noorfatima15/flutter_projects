import 'package:calculator_app/controllers/calculatorController.dart';
import 'package:calculator_app/views/results.dart';
import 'package:calculator_app/widgets/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({Key? key}) : super(key: key);
  CalculatorController calculatorController = Get.put(CalculatorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 360,
              height: 160,
              color: Colors.red,
              child: FinalResult(),
            ),
            Container(
              width: 360,
              height: 580,
              color: Colors.blue,
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      ButtonWidget(
                        buttontext: '1',
                        buttonPressed: () =>
                            calculatorController.addDigits('1'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '2',
                        buttonPressed: () =>
                            calculatorController.addDigits('2'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '3',
                        buttonPressed: () =>
                            calculatorController.addDigits('3'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '4',
                        buttonPressed: () =>
                            calculatorController.addDigits('4'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '5',
                        buttonPressed: () =>
                            calculatorController.addDigits('5'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      ButtonWidget(
                        buttontext: '6',
                        buttonPressed: () =>
                            calculatorController.addDigits('6'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '7',
                        buttonPressed: () =>
                            calculatorController.addDigits('7'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '8',
                        buttonPressed: () =>
                            calculatorController.addDigits('8'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '9',
                        buttonPressed: () =>
                            calculatorController.addDigits('9'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '0',
                        buttonPressed: () =>
                            calculatorController.addDigits('0'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      ButtonWidget(
                        buttontext: 'x',
                        buttonPressed: () =>
                            calculatorController.operationFunction('x'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '+',
                        buttonPressed: () =>
                            calculatorController.operationFunction("+"),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '-',
                        buttonPressed: () =>
                            calculatorController.operationFunction('-'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '=',
                        buttonPressed: () =>
                            calculatorController.resultFunction(),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '/',
                        buttonPressed: () =>
                            calculatorController.operationFunction('/'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      ButtonWidget(
                        buttontext: 'C',
                        buttonPressed: () => calculatorController.clearAll(),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: 'bcksp',
                        buttonPressed: () =>
                            calculatorController.addDigits('bcksp'),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '.',
                        buttonPressed: () =>
                            calculatorController.decimalFunction(),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '=',
                        buttonPressed: () => calculatorController.addDigits(''),
                      ),
                      SizedBox(width: 20),
                      ButtonWidget(
                        buttontext: '/',
                        buttonPressed: () => calculatorController.addDigits(''),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
