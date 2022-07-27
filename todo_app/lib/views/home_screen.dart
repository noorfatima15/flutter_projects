import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todo_app/controllers/task_controller.dart';
import 'package:todo_app/widgets/list_tile.dart';
import 'package:todo_app/widgets/listview.dart';

import '../models/task.dart';

class Homescreen extends StatelessWidget {
  // const Homescreen({Key? key}) : super(key: key);
  TaskController taskController = Get.put(TaskController());
  // TextEditingController titlecontroller = TextEditingController();
  // TextEditingController subtitlecontroller = TextEditingController();

  late Task task;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Center(child: Text('Todo App')),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 5),
            List_view(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(Container(
            height: 600,
            width: double.maxFinite,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Type Your Task Here',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        fontSize: 30),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // padding: EdgeInsets.all(5),
                  width: 280,
                  child: TextFormField(
                    controller: taskController.titlecontroller,
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      icon: Icon(Icons.note_add_outlined),
                      hintText: 'Write Your Title Here',
                      labelText: 'Title',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // padding: EdgeInsets.all(5),
                  width: 280,
                  child: TextFormField(
                    controller: taskController.subtitlecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      icon: Icon(Icons.bookmark_add_rounded),
                      hintText: 'Write Your SubTitle Here',
                      labelText: 'SubTitle',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      // Get.to(taskController.addTask(
                      //     task.title, task.subtitle, DateTime.now()));
                      taskController.addTask(
                          taskController.titlecontroller.text,
                          taskController.subtitlecontroller.text,
                          DateTime.now());

                      print(taskController.addTask(
                          taskController.titlecontroller.text,
                          taskController.subtitlecontroller.text,
                          DateTime.now()));
                    },
                    child: Text(
                      'Done',
                    )),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Get.to(Homescreen());
                    },
                    child: Text(
                      'Go Back',
                    ))
              ],
            ),
          ));
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }
}
