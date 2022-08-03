import 'package:calculator_app/controllers/calculatorController.dart';
import 'package:calculator_app/views/subValues.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinalResult extends StatelessWidget {
  FinalResult({Key? key}) : super(key: key);
  CalculatorController calculatorController = Get.find<CalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubValue(values: '${calculatorController.firstValue}'),
          SubValue(values: '${calculatorController.operator}'),
          SubValue(values: '${calculatorController.secondValue}'),
          Result(results: '${calculatorController.results}')
        ],
      ),
    );
  }
}
