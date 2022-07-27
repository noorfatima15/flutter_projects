import 'package:counter_app_by_using_getx/controllers/counter_controller.dart';
import 'package:counter_app_by_using_getx/views/counter%20screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Counter App')),
      ),
      body: Column(
        children: [
          SizedBox(height: 250),
          Container(
            child: Center(
                child: Obx(
              () => Text(counterController.count.toString()),
            )),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {
              counterController.increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {
              counterController.decrement();
            },
            child: Icon(Icons.minimize),
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(ResultScreen());
              },
              child: Text('Next Page'))
        ],
      ),
    );
  }
}
