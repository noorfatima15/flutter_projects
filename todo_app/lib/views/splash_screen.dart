import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todo_app/views/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://images.all-free-download.com/images/graphiclarge/soft_wave_background_310455.jpg',
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(height: 400),
              Text(
                'Todo App',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 100),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
