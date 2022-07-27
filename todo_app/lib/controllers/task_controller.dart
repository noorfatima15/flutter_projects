import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/models/task.dart';

class TaskController extends GetxController {
  final tasklist = <Task>[].obs;
  // List<Task> get tasklist => _tasklist.value;

  TextEditingController titlecontroller = TextEditingController();
  TextEditingController subtitlecontroller = TextEditingController();
  addTask(String tile_title, String tile_subtitle, DateTime DateTime) {
    Task tasklists = Task(
        title: tile_title,
        subtitle: tile_subtitle,
        createdAt: DateTime.toString());

    tasklist.add(tasklists);
    // tasklist.add(Task(
    //     title: tile_title,
    //     subtitle: tile_subtitle,
    //     createdAt: DateTime.now().toString()));

    // return tasklist;
  }

  void deleteTask() {
    // tasklist.removeAt();
    // tasklist.removeAt(index);
  }
}
