import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/views/home_screen.dart';
import 'package:expense_tracker/widgets/list_containers.dart';
import 'package:expense_tracker/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class AddEntriesOfExpense extends StatefulWidget {
  String dropdownValue = 'Expense';

  AddEntriesOfExpense({Key? key}) : super(key: key);
  Expense_Income_Details details = Expense_Income_Details();
  List_Tile list_tile = List_Tile();
  ListContainers listContainers = ListContainers(header_text: 'abcd');
  TextEditingController activity_controller = TextEditingController();
  TextEditingController amount_controller = TextEditingController();

  @override
  State<AddEntriesOfExpense> createState() => _AddEntriesOfExpenseState();
}

class _AddEntriesOfExpenseState extends State<AddEntriesOfExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/background.jpg',
                ),
                fit: BoxFit.cover),
            color: Colors.black,
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Center(
                child: Text(
                  'New Transaction',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Category',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(height: 20),
              Theme(
                data: Theme.of(context).copyWith(canvasColor: Colors.grey),
                child: DropdownButton<String>(
                    dropdownColor: Colors.black54,
                    elevation: 0,
                    menuMaxHeight: 120,
                    hint: Text('Choose Option'),
                    value: widget.dropdownValue,
                    items: <String>['Expense', 'Income']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.white,
                              // backgroundColor: Colors.black54,
                            ),
                          ));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        widget.dropdownValue = newValue!;
                      });
                    }),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 300,
                  child: TextFormField(
                    controller: widget.activity_controller,
                    autofocus: true,
                    // initialValue: List_Tile().tile_text,
                    onChanged: (value) {
                      widget.details.tile_text = value;
                    },
                    decoration: const InputDecoration(
                        hoverColor: Colors.white,
                        focusColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 15,
                              color: Colors.white,
                              style: BorderStyle.none),
                        ),
                        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                        icon: Icon(Icons.task, color: Colors.white),
                        hintText: 'Add Your Activitiy Here ',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        labelText: 'Activity ',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 15)),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 300,
                  child: TextFormField(
                    controller: widget.amount_controller,
                    //onChanged: (value) => widget.activity_controller,

                    autofocus: false,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 15,
                              color: Colors.white,
                              style: BorderStyle.none),
                        ),
                        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                        icon: Icon(Icons.attach_money_outlined,
                            color: Colors.white),
                        hintText: 'Add Your Amount Here ',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        labelText: 'Amount ',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 15)),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(height: 80),
              ElevatedButton(
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    widget.details.tile_text;
                    print(widget.details.tile_text);
                  });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 15))),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text(
                  'Back',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  _navigateToNextScreen(context);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 15))),
              ),
            ],
          ),
        ));
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
