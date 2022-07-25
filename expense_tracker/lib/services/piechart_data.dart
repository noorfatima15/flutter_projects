import 'dart:ui';
import 'package:expense_tracker/models/expense_income_details.dart';

class PieChartdata {
  double expenseValue = 0.0;
  double incomeValue = 0.0;

// double result
//
//   Map<String, double> dataMap = {
//     "Expense": 0.0,
//     "Income": 0.0,

  // PieChartdata(this.incomeValue, this.expenseValue);
  final gradientList = <List<Color>>[
    [
      Color.fromRGBO(114, 14, 67, 1.0),
      Color.fromRGBO(131, 39, 113, 1.0),
    ],
    [
      Color.fromRGBO(47, 10, 79, 1.0),
      Color.fromRGBO(57, 12, 98, 1.0),
    ],
  ];
}
