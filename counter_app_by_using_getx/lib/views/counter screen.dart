import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/counter_controller.dart';

class ResultScreen extends StatelessWidget {
  // const ResultScreen({Key? key}) : super(key: key);
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Screen'),
      ),
      body: Column(
        children: [
          SizedBox(height: 250),
          Center(
            child: Obx(
                () => Text('Here is the Result = ${counterController.count}')),
          ),
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Go Back'))
        ],
      ),
    );
  }
}
