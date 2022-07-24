import 'dart:async';

import 'package:expense_tracker/views/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [
                  Colors.white10,

                  // Colors.white10,
                  Colors.black12,
                  // Colors.black12,
                  // Colors.black38,
                  // Colors.black38,
                  // Colors.black45,
                  // Colors.black45,
                  // Colors.black54,
                  // Colors.black54,
                  // Colors.black87,
                  // Colors.black87,
                  Colors.black54,
                ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(TextSpan(
                text: 'Expense\n\n',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Libre Baskerville',
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Tracker',
                    style: TextStyle(
                        fontFamily: 'Libre Baskerville',
                        fontSize: 50,
                        fontWeight: FontWeight.w600),
                  )
                ])),
            SizedBox(height: 140),
            CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
