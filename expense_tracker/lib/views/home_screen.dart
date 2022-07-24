import 'package:expense_tracker/views/circular_graph.dart';
import 'package:expense_tracker/views/entriespage.dart';
import 'package:expense_tracker/widgets/list_containers.dart';
import 'package:expense_tracker/widgets/list_tile.dart';
import 'package:expense_tracker/widgets/listview.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  int currentindex = 0;

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          // Container(
          //   height: 40,
          // ),
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                height: 740,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/background.jpg',
                      ),
                      fit: BoxFit.cover),
                  color: Colors.black,
                ),
                child: PieChart(),
              ),
              Container(
                //
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                height: 480,
                width: 400,

                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          SizedBox(height: 25),
                          Text.rich(TextSpan(
                              text: 'Income\n',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '€30,169',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400),
                                )
                              ])),
                        ],
                      ),
                      // Divider(
                      //   height: 10,
                      // ),
                      const VerticalDivider(
                        color: Colors.white,
                        width: 120,
                        indent: 0.5,
                        endIndent: 0.5,
                      ),
                      Column(
                        children: [
                          SizedBox(height: 25),
                          Text.rich(TextSpan(
                              text: 'Expenses\n',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '€90,169',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400),
                                )
                              ])),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      ListDetails(
                        dateOfEnry: 'Aug 19',
                        listcontainers: [List_Tile()],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: widget.currentindex,
      //   elevation: 1,
      //   items: [
      //     BottomNavigationBarItem(
      //         backgroundColor: const Color(0xFF0A3044),
      //         icon: Icon(
      //           Icons.settings_applications_sharp,
      //           color: Colors.white,
      //         ),
      //         label: ''),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.analytics_rounded,
      //           color: Colors.white,
      //         ),
      //         label: ''),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.playlist_add_check_outlined,
      //           color: Colors.white,
      //         ),
      //         label: ''),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.account_circle_sharp,
      //           color: Colors.white,
      //         ),
      //         label: '')
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       widget.currentindex;
      //     });
      //   },
      // )
      //
      //
      //
      //,

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToEntriesPage(context);
        },
      ),
    );
  }

  void _navigateToEntriesPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => AddEntriesOfExpense()));
  }
}
