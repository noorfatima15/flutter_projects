import 'package:flutter/material.dart';

class SubValue extends StatelessWidget {
  const SubValue({Key? key, required this.values}) : super(key: key);
  final String values;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(
        values,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  const Result({Key? key, required this.results}) : super(key: key);
  final String results;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: double.infinity,
      child: Text(
        results,
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
