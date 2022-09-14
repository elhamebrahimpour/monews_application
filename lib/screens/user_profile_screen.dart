import 'package:flutter/material.dart';
import 'package:monews_application/constants/color_constants.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: Text(
          'حساب کاربری',
          style:
              Theme.of(context).textTheme.headline2!.copyWith(color: mainRed),
        ),
      ),
    );
  }
}
