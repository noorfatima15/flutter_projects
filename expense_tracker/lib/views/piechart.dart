import 'package:expense_tracker/models/expense_income_details.dart';
import 'package:expense_tracker/services/expense_services.dart';
import 'package:expense_tracker/services/piechart_data.dart';
import 'package:expense_tracker/widgets/list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:pie_chart/pie_chart.dart';

class Piechart extends StatefulWidget {
  PieChartdata piechartdata = PieChartdata();
  Expense_Services services = Expense_Services();
  int choiceIndex = 0;

  Piechart({Key? key}) : super(key: key);

  @override
  State<Piechart> createState() => _PiechartState();
}

class _PiechartState extends State<Piechart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: Center(
          child: PieChart(
            dataMap: Expense_Income_Details(
                tile_price: widget.services.tile_price,
                tile_text: widget.services.tile_text,
                amount: []).resultOfPieChart(100, 500),

            // colorList: widget.colorlist,

            gradientList: PieChartdata().gradientList,
            emptyColorGradient: [
              Color(0xff6c5ce7),
              Color(0xff6c5ce7),
            ],

            animationDuration: Duration(
              milliseconds: 800,
            ),

            chartLegendSpacing: 5,
            chartRadius: MediaQuery.of(context).size.width / 3.2,

            initialAngleInDegree: 0,
            chartType: ChartType.ring,
            ringStrokeWidth: 5,

            baseChartColor: Color.fromARGB(100, 56, 56, 56),

            //centerText: "HYBRID",
            legendOptions: LegendOptions(
              showLegendsInRow: false,

              legendPosition: LegendPosition.bottom,
              showLegends: true,
              //legendShape: _BoxShape.circle,
              legendTextStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(225, 225, 225, 225)),
            ),
            chartValuesOptions: ChartValuesOptions(
                showChartValueBackground: false,
                showChartValues: true,
                showChartValuesInPercentage: false,
                showChartValuesOutside: true,
                decimalPlaces: 2,
                chartValueBackgroundColor: Color.fromARGB(255, 255, 255, 255),
                chartValueStyle:
                    TextStyle(color: Color.fromARGB(225, 225, 225, 225))),
          ),
        ));
  }
}
