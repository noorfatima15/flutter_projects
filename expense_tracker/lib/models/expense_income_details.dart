class Expense_Income_Details {
  late double expenseValue;
  late double incomeValue;
  final String tile_text;
  final String tile_price;
  final List<String> amount;

  Expense_Income_Details({
    required this.amount,
    required this.tile_text,
    required this.tile_price,
  });

  Map<String, double> resultOfPieChart(double expense, double income) {
    double expenseValue = expense;
    double incomeValue = income;

    Map<String, double> dataMap = {
      'Expense': expenseValue,
      'Income': incomeValue,
    };

    double expense_ratio = expenseValue / 100;
    double income_ratio = incomeValue / 100;
    if (expense_ratio <= 100 && income_ratio <= 100) {
      double resultofexpense = expense_ratio;
      double resultofincome = income_ratio;
      incomeValue += income_ratio;
      expenseValue += resultofexpense;
      dataMap['Expense'] = resultofexpense;
      dataMap['Income'] = resultofincome;

      return dataMap;
    }
    // else if (income_ratio <= 100) {
    //   double resultofincome = income_ratio;
    //   dataMap['Income'] = resultofincome;
    //
    //   return dataMap;
    // }

    return dataMap;
  }
}
