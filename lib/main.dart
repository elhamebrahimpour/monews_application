import 'package:flutter/material.dart';
import 'package:monews_application/constants/color_constants.dart';
import 'package:monews_application/screens/main_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline2: TextStyle(
              fontFamily: 'Shabnam',
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: mainGrey),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
