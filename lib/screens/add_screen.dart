import 'package:flutter/material.dart';
import 'package:monews_application/constants/color_constants.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: Text(
          'اضافه کردن مطلب جدید',
          style:
              Theme.of(context).textTheme.headline2!.copyWith(color: mainRed),
        ),
      ),
    );
  }
}
