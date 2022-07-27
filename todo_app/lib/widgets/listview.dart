import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todo_app/widgets/list_tile.dart';

import '../controllers/task_controller.dart';

class List_view extends StatelessWidget {
  // const List_view({Key? key}) : super(key: key);
  TaskController taskController = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: taskController.tasklist.value.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  List_Tile(
                    subtitle: taskController.subtitlecontroller.text,
                    title: taskController.titlecontroller.text,
                  ),
                ],
              );
            })
      ],
    );
  }
}
