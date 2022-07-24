class Expense_Income_Details {
  late double expenseValue;
  late double incomeValue;
  late String tile_text = '';
  late String tile_price = '';

  Map<String, double> resultOfPieChart(double expense, double income) {
    double expenseValue = expense;
    double incomeValue = income;

    Map<String, double> dataMap = {
      'Expense': expenseValue,
      'Income': incomeValue,
    };

    double expense_ratio = expenseValue / 100;
    double income_ratio = incomeValue / 100;
    if (expense_ratio <= 100) {
      double resultofexpense = expense_ratio;
      expenseValue += resultofexpense;
      dataMap['Expense'] = resultofexpense;

      return dataMap;
    } else if (income_ratio <= 100) {
      double resultofincome = income_ratio;
      dataMap['Income'] = resultofincome;

      return dataMap;
    }

    return dataMap;
  }
}
