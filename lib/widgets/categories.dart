import 'package:flutter/material.dart';
import 'package:monews_application/constants/color_constants.dart';
import 'package:monews_application/constants/list_contants.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 24),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: ((context, index) => index == 0
              ? _getAllContainer(categoryList[index], context)
              : _getCategoryContainer(categoryList[index], context)),
        ),
      ),
    );
  }

  Widget _getCategoryContainer(String string, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(
          string,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: mainGrey, fontSize: 12),
        ),
      ),
    );
  }

  Widget _getAllContainer(String string, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: lightRed,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(
          string,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: mainRed, fontSize: 12),
        ),
      ),
    );
  }
}
