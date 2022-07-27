import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/task_controller.dart';
import '../models/task.dart';

class List_Tile extends StatelessWidget {
  // const List_Tile({Key? key}) : super(key: key);
  // final Task task;
  //
  // const List_Tile({super.key, required this.task});

  late String title;
  late String subtitle;
  TaskController taskController = Get.put(TaskController());
  List_Tile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 100,
        width: 355,
        decoration: BoxDecoration(
          // color: Colors.red,
          border: Border.all(color: Colors.black12),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.note_add_outlined,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Center(
                      child: Container(
                          width: 220,
                          child: Text(
                            title,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.green),
                          )),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 220,
                      child: Text(
                        subtitle,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    taskController.deleteTask();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete_outline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
