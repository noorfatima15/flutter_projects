// import 'package:flutter/material.dart';
// import 'package:d_chart/d_chart.dart';
// import 'dart:ui' as ui;
//
// class PieChart extends StatelessWidget {
//   PieChart({Key? key}) : super(key: key);
//   List<Color> colors = <Color>[
//     const Color.fromRGBO(75, 135, 185, 1),
//     const Color.fromRGBO(192, 108, 132, 1),
//     const Color.fromRGBO(246, 114, 128, 1),
//     const Color.fromRGBO(248, 177, 149, 1),
//     const Color.fromRGBO(116, 180, 155, 1)
//   ];
//
//   final data = [
//     {
//       'expense': 'aa',
//       'expense2': 30,
//     },
//     {
//       'expense': 'bb',
//       'expense2': 60,
//     },
//     {
//       'expense': 'cc',
//       'expense2': 90,
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: 10),
//         Row(
//           children: [
//             SizedBox(width: 30),
//             Text('Hello Kate',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     fontSize: 40)),
//             SizedBox(width: 80),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               height: 20,
//               width: 80,
//               child: Center(
//                 child: Text(
//                   'Aug 2019',
//                   style: TextStyle(color: Colors.white, fontSize: 15),
//                 ),
//               ),
//             )
//           ],
//         ),
//         Row(
//           children: [
//             SizedBox(width: 20),
//             Container(
//               height: 200,
//               width: 150,
//               child: DChartPie(
//                 data: data.map((e) {
//                   return {'domain': e['expense'], 'measure': e['expense2']};
//                 }).toList(),
//                 fillColor: (pieData, index) {
//
//
//                   // if (pieData['domain'] && pieData['measure'] != null) {
//                   // // return Colors.red;
//                   // return ui.Gradient.linear();
//                   // } else {
//                   //   return Colors.grey;
//                   // }
//
//                   switch (pieData['domain']) {
//                     case 'aa':
//                       return Colors.pink;
//                     case 'bb':
//                       return Colors.purpleAccent;
//                     case 'cc':
//                       return Colors.pinkAccent;
//                   }
//                 },
//                 labelPadding: 20,
//                 showLabelLine: true,
//                 strokeWidth: 2,
//                 donutWidth: 10,
//               ),
//             ),
//             SizedBox(width: 80),
//             Container(
//               child: Column(
//                 children: [
//                   Text(
//                     'Balance',
//                     style: TextStyle(color: Colors.grey, fontSize: 15),
//                   ),
//                   Text(
//                     '70,000',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
//
// //   labelColor: Colors.white,
// //  labelPosition: PieLabelPosition.outside,
// // labelFontSize: 20,
// //labelLineColor: Colors.deepPurple,
// //labelLineThickness: 2,
// //labelLinelength: 40,
// // pieLabel: (Map<dynamic, dynamic> pieData, int? index) {
// //   return pieData['domain'] +
// //       ':\n' +
// //       pieData['expense2'].toString() +
// //       'abc';
// // },

// import 'dart:ui' as ui;
// import 'dart:typed_data';
// import 'package:flutter/cupertino.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// class PieChart extends StatefulWidget {
//   List<Color> colors = <Color>[
//     const Color.fromRGBO(75, 135, 185, 1),
//     const Color.fromRGBO(192, 108, 132, 1),
//     const Color.fromRGBO(246, 114, 128, 1),
//     const Color.fromRGBO(248, 177, 149, 1),
//     const Color.fromRGBO(116, 180, 155, 1)
//   ];
//
// // Stop value denotes fractions along the gradient
//   List<double> stops = <double>[0.2, 0.4, 0.6, 0.8, 1];
//
//   List<_SalesData> data = [
//     _SalesData('Jan', 35),
//     _SalesData('Feb', 28),
//     _SalesData('Mar', 34),
//     _SalesData('Apr', 32),
//     _SalesData('May', 40)
//   ];
//   PieChart({Key? key}) : super(key: key);
//
//   @override
//   State<PieChart> createState() => _PieChartState();
// }
//
// class _SalesData {
//   _SalesData(String month, int date);
// }
//
// class _PieChartState extends State<PieChart> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(child: SfCircularChart(
//           onCreateShader: (ChartShaderDetails chartShaderDetails) {
//             return ui.Gradient.sweep(
//                 chartShaderDetails.outerRect.center,
//                 widget.colors,
//                 widget.stops,
//                 TileMode.clamp,
//                 _degreeToRadian(0),
//                 _degreeToRadian(360),
//                 _resolveTransform(
//                     chartShaderDetails.outerRect, TextDirection.ltr));
//           },
//         ))
//       ],
//     );
//   }
// }
//
// // Float64List? _resolveTransform(ui.Rect outerRect, ui.TextDirection ltr) {}
// //
// // double _degreeToRadian(int degree) {
// //   degree = 360;
// //   double sum = 0.0;
// //   for (int i = 0; i <= degree; i++) {
// //     sum += i;
// //   }
// //   return sum;
// // }

import 'package:expense_tracker/views/piechart.dart';

import 'package:flutter/material.dart';

class PieChart extends StatefulWidget {
  PieChart({Key? key}) : super(key: key);

  @override
  State<PieChart> createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  @override
  Widget build(BuildContext context) {
    //
    return Column(
      children: [
        SizedBox(height: 50),
        Row(
          children: [
            SizedBox(width: 30),
            Text('Hello Kate!',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 28)),
            SizedBox(width: 120),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 131, 134, 131),
                borderRadius: BorderRadius.circular(10),
              ),
              height: 25,
              width: 64,
              child: Center(
                child: Text(
                  'Aug 2019',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 20),
            Container(
              height: 160,
              width: 150,
              child: Piechart(),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text.rich(TextSpan(
                  text: 'Balance\n',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                  children: <InlineSpan>[
                    TextSpan(
                        text: '₹30,169',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                        ))
                  ])),
            )
          ],
        ),
      ],
    );
  }
}

// SfCircularChart(
// onCreateShader: (ChartShaderDetails chartshaderdetails) {
// return ui.Gradient.radial(
// chartshaderdetails.outerRect.center,
// chartshaderdetails.outerRect.right -
// chartshaderdetails.outerRect.center.dx,
// widget.colors!,
// widget.customStops);
// },
// series: <CircularSeries<_SalesData, String>>[
// DoughnutSeries<_SalesData, String>(
// dataSource: widget.data,
// xValueMapper: (_SalesData data, _) => data.year,
// yValueMapper: (_SalesData data, _) => data.sales.toDouble(),
// )
// ],
// ),
// Container(
// height: 150,
// width: 150,
// child: DChartPie(
// data: widget.data.map((e) {
// return {'domain': e['expense'], 'measure': e['expense2']};
// }).toList(),
// fillColor: (pieData, index) {
// // if (pieData['domain'] && pieData['measure'] != null) {
// // // return Colors.red;
// // return ui.Gradient.linear();
// // } else {
// //   return Colors.grey;
// // }
//
// switch (pieData['domain']) {
// case 'aa':
// return Colors.pink;
// case 'bb':
// return Colors.purpleAccent;
// }
// },
// labelPadding: 20,
// showLabelLine: true,
// strokeWidth: 2,
// donutWidth: 10,
// ),
// ),
