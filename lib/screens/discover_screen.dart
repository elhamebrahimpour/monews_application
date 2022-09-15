import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:monews_application/constants/color_constants.dart';
import 'package:monews_application/widgets/carousel_slider_demo.dart';
import 'package:monews_application/widgets/categories.dart';

class DiscoverScreen extends StatefulWidget {
  DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: _getAppbar(),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            _getScrollView(context),
            Container(
              color: mainRed,
              height: 42,
              child: Marquee(
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(color: whiteColor),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  velocity: 100.0,
                  startPadding: 10.0,
                  accelerationDuration: Duration(seconds: 1),
                  accelerationCurve: Curves.linear,
                  decelerationDuration: Duration(milliseconds: 500),
                  decelerationCurve: Curves.easeOut,
                  text:
                      'برانکو تکذیب کرد/ نه با عمان فسخ کردم، نه با ایران مذاکره داشتم   ...  بی‌نظمی شدید در مراسم رونمایی از کاپ جام جهانی و قهر نماینده فیفا'),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _getAppbar() {
    return AppBar(
      backgroundColor: backColor,
      elevation: 0,
      title: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'images/icon_search.png',
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 22,
          ),
          Image.asset(
            'images/icon_filter_edit.png',
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 88,
          ),
          Image.asset('images/icon_logo.png'),
        ],
      ),
      centerTitle: true,
    );
  }

  Widget _getScrollView(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CarouselSliderDemo(),
        ),
        SliverToBoxAdapter(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: CategoriesList(),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 20),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'مشاهده بیشتر',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(color: mainRed, fontSize: 12.0),
                ),
                Text(
                  'خبرگذاری ها',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(color: mainBlack),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: _getFollowList(),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 20),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'مشاهده بیشتر',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(color: mainRed, fontSize: 12.0),
                ),
                Text(
                  'پیشنهاد سردبیر',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(color: mainBlack),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(bottom: 60),
          sliver: SliverToBoxAdapter(
            child: _getSuggestionList(),
          ),
        ),
      ],
    );
  }

  Widget _getSuggestionList() {
    final List<String> category = ['group3', 'group1'];
    return SizedBox(
      height: 159,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.only(right: 24, left: 4),
                child: Stack(
                  children: [
                    SizedBox(
                      width: 271,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset('images/asset$index.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Image.asset('images/${category[index]}.png'),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }

  Widget _getFollowList() {
    return SizedBox(
      height: 160,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => _getFollowConatiner(index)),
        ),
      ),
    );
  }

  Widget _getFollowConatiner(int index) {
    final List<String> nameList = ['زومیت', 'ورزش سه', 'دیجیاتو'];
    return Container(
      margin: EdgeInsets.only(right: 18, left: 6),
      width: 133,
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whiteColor),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Image.asset(
              'images/follow$index.png',
            ),
          ),
          Text(
            nameList[index],
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: mainBlack, fontSize: 12.0),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 16),
            width: 101,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: lightRed,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Text(
                'دنبال کردن',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: mainRed, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
