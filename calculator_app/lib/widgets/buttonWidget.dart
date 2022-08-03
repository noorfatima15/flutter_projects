import 'package:calculator_app/controllers/calculatorController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {Key? key, required this.buttontext, required this.buttonPressed})
      : super(key: key);
  final String buttontext;
  final Function buttonPressed;
  CalculatorController calculatorController = Get.put(CalculatorController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black.withOpacity(0.5),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.5),
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(0, 0)),
          ]),
      child: MaterialButton(
        onPressed: () {
          // calculatorController.addDigits(buttontext);

          buttonPressed();
          print(calculatorController.firstValue + 'first value');
          print(calculatorController.secondValue + 'second value');
          print(calculatorController.results + 'result');
        },
        child: Text(
          buttontext,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
