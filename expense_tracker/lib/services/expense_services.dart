import 'package:expense_tracker/models/expense_income_details.dart';
import 'package:kt_dart/annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/exception.dart';
import 'package:kt_dart/kt.dart';
import 'package:kt_dart/standard.dart';

class Expense_Services {
  List<Expense_Income_Details> details = [];
  String tile_text = '';
  String tile_price = '';
  List<String> amount = [];
  // void addAmount() {
  //   amount.add(tile_price);
  // }

  void addDetails() {
    Expense_Income_Details expense_income_details = Expense_Income_Details(
      tile_text: tile_text, tile_price: tile_price,
      // amount: amount
    );
    // details.addAll(amount);

    details.add(expense_income_details);
    // print(details.first.amount);
    // print(expense_income_details.amount);
    print(expense_income_details.tile_text);

    tile_price = '';
    tile_text = '';
  }
}
