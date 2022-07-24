import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class List_Tile extends StatefulWidget {
  // String image_url!;
  late String tile_text;
  String tile_price = '';

  Expense_Income_Details modeldetails = Expense_Income_Details();

  @override
  State<List_Tile> createState() => _List_TileState();
}

class _List_TileState extends State<List_Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 30),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                // child: Image(
                // image: NetworkImage(widget.image_url),
                // ),
              ),
              SizedBox(width: 10),
              Text(
                Expense_Income_Details().tile_text,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(width: 100),
              Text(
                Expense_Income_Details().tile_price,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
