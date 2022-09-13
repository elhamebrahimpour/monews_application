import 'package:flutter/material.dart';
import 'package:monews_application/constants/color_constants.dart';
import 'package:monews_application/screens/news_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    //use initialIndex to set the default selected tab
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        backgroundColor: backColor,
        elevation: 0,
        leading: Image.asset('images/icon_notification.png'),
        title: Image.asset('images/icon_logo.png'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            _getTabContainer(context),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _getDummyList(),
                  _getDummyList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getDummyList() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 22),
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
                  'خبرهای داغ',
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
          child: _getHotNewsList(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 22),
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
                  'خبرهایی که علاقه داری',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(color: mainBlack),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            ((context, index) {
              return _getFavoriteNews(index);
            }),
            childCount: 2,
          ),
        ),
      ],
    );
  }

  Widget _getFavoriteNews(int index) {
    return Container(
      width: 380,
      height: 132,
      margin: EdgeInsets.only(right: 24, left: 24, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 14, right: 8, bottom: 5),
                child: SizedBox(
                  width: 190,
                  child: Text(
                    'سـاعـت هوشـمـنـد گــارمـیـن Venu Sq 2 بـاعمر باتری ۱۱ روزه معرفی شد.',
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 13.0, color: mainBlack),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, left: 11, right: 8, bottom: 10),
                child: SizedBox(
                  width: 190,
                  child: Text(
                    'گارمین در رویداد IFA ۲۰۲۲ ساعت هوشمند Venu Sq 2 و ردیاب سلامت .کودکان موسوم به Black Panther Vivofit Jr 3 را معرفی کرد.',
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 9.0),
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: SizedBox(
                  width: 190,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset('images/short_menu.png'),
                      Spacer(),
                      Text(
                        'خبرگذاری زومیت',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 8.0, color: mainBlack),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('images/ellipse2.png'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Stack(
              children: [
                SizedBox(
                  height: 116,
                  width: 116,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('images/item$index.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Image.asset('images/group2.png'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _getHotNewsList() {
    return SizedBox(
      height: 294,
      width: 279,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: ((context, index) {
            return _getHotNewsContainer();
          }),
        ),
      ),
    );
  }

  Widget _getHotNewsContainer() {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: ((context) => NewsScreen()),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(right: 12, left: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 4, top: 4, right: 4, bottom: 16),
              child: Stack(
                children: [
                  SizedBox(
                    width: 271,
                    height: 159,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset('images/asset1.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Image.asset('images/group1.png'),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 248,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset('images/icon_flash_circle.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'پیشنهاد مونیوز',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 12.0),
                  ),
                  Spacer(),
                  Text(
                    '5 دقیقه قبل',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 12.0),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 248,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'پــاسـخ منـفـی پــورتـــو بـه چلـسـی بـرای جذب طارمی با طعم تهدید!',
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 14.0, color: mainBlack),
                ),
              ),
            ),
            SizedBox(
              width: 248,
              child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset('images/ellipse1.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'خبرگذاری آخرین خبر',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 8.0, color: mainBlack),
                    ),
                    Spacer(),
                    Image.asset('images/short_menu.png'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getTabContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 24),
      width: 380,
      height: 43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: whiteColor,
      ),
      child: TabBar(
        controller: _tabController,
        labelColor: Colors.white,
        labelStyle: Theme.of(context).textTheme.headline2,
        unselectedLabelColor: mainGrey,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: mainRed),
        indicatorPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        tabs: [
          Text(
            'دنبال می‌کنید',
            textAlign: TextAlign.center,
          ),
          Text(
            'پیشنهادی',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
