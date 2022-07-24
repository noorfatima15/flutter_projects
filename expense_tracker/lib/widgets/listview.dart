import 'package:expense_tracker/views/entriespage.dart';
import 'package:expense_tracker/widgets/list_containers.dart';
import 'package:expense_tracker/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class ListDetails extends StatefulWidget {
  String dateOfEnry;
  List<List_Tile> listcontainers;
  ListDetails(
      {Key? key, required this.listcontainers, required this.dateOfEnry})
      : super(key: key);
  AddEntriesOfExpense entries = AddEntriesOfExpense();
  @override
  State<ListDetails> createState() => _ListDetailsState();
}

class _ListDetailsState extends State<ListDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //SizedBox(height: 200),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          height: 400,
          width: 380,
          child: ListView.builder(
            physics: ScrollPhysics(parent: null),
            itemCount: widget.listcontainers.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 30),
                            Text(
                              widget.dateOfEnry,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                  fontSize: 22),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            List_Tile(),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
