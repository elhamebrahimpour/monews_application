import 'package:flutter/material.dart';
import 'package:monews_application/constants/color_constants.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: SafeArea(
        child: Stack(
          children: [
            _getNewsImage(),
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * .64,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: _getNewsContent(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getNewsContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Container(
            height: 5,
            width: 67,
            margin: EdgeInsets.only(
              top: 10,
              bottom: 26,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: mainGrey,
            ),
          ),
          _getFirstTopContainer(),
          SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'پاسـخ مـنـفی پــورتـو به چـلـسی بـرای جــذب طـارمـی با طعم تهدید!',
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 18.0, color: mainBlack),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: _getCategoryList(),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'باشگاه چلسی که پیگیر جذب مهدی طارمی مهاجـم ایران بـود، با پاسـخمنفی باشگاه پورتو مواجه شد و این بازیـکن باوجود رویای بازی در لیگبرتر انگلیس فعلا در پرتغال ماندنی است.',
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 14.0, color: mainBlack),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Column(
                    children: [
                      Text(
                        'بحث پیشنهاد باشگاه چلسـی انـگـلیس به پـورتـو بـرای جـذب مـهدیطــارمـی در آخـریــن ســاعــات نــقـل و انـتـقـالـات فــوتـبـال اروپـا یــکـی ازسوژه‌های اصلی هواداران دو تیم بود. این خبر در حالی رسانه‌ای شدکه گفته می‌شد چلسی برای جذب طارمی مبلغ ۲۵ میلیون یورو را بهپورتو پیشنهاد داده است.روزنـامه «ابولا» پرتغال هم روز چهارشنـبـه ایــن خـبر را اعلـام کرد و بهدنبال آن بعضی از مطبوعات انگلیس و کشورهای دیگر هم پیشنهادچلسی به طارمی را دنبال کردند.',
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14.0,
                            color: mainBlack,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'طـارمـی در لـیـگ قـهـرمـانـان دو فــصـل پــیــش اروپـا و در دیـدار مـقـابـلچلسی عملکرد بی نظیری داشت و با یک گل قیچی برگردان، پورتو رابه پیروزی رساند. هرچند که نماینده پرتـغال به خاطر مجموع نـتـایـجبازی رفت و برگشت حـذف شد. با ایـن حـال گـل طـارمـی حتـی تـا یکقـدمی انـتخـاب بهـترین گـل سـال فیـفا و دریـافـت جـایزه «پوشکاش»هم پیش رفت.',
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14.0,
                            color: mainBlack,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 15),
                child: Container(
                  height: 288,
                  width: 2,
                  margin: EdgeInsets.only(
                    top: 10,
                    bottom: 26,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: mainRed,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _getCategoryList() {
    final List<String> category = ['لژیونرها', 'ورزشی', 'فوتبال اروپا'];
    return SizedBox(
      height: 32,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: ((context, index) =>
              _getCategoryContainer(category[index])),
        ),
      ),
    );
  }

  Widget _getCategoryContainer(String string) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 72,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: lightRed,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Text(
          string,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: mainRed, fontSize: 10),
        ),
      ),
    );
  }

  Widget _getFirstTopContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              '5 دقیقه قبل',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 11.0),
            ),
          ),
          SizedBox(
            width: 56,
          ),
          Container(
            height: 26,
            width: 117,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: mainRed,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'خبرگزاری آخرین خبر',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 9.0, color: whiteColor),
                ),
                SizedBox(
                  width: 4,
                ),
                Image.asset(
                  'images/ellipse1.png',
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            'پیشنهاد مونیوز',
            style:
                Theme.of(context).textTheme.headline2!.copyWith(fontSize: 11.0),
          ),
          SizedBox(
            width: 4,
          ),
          Image.asset(
            'images/icon_flash_circle.png',
          ),
        ],
      ),
    );
  }

  Widget _getNewsImage() {
    return Stack(
      children: [
        ClipRRect(
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
              'images/asset5.png',
              width: 428,
              height: 329,
            ),
          ),
        ),
        Positioned(
          left: 24,
          right: 24,
          top: 12,
          child: Row(
            children: [
              Image.asset(
                'images/icon_menu.png',
              ),
              SizedBox(
                width: 22,
              ),
              Image.asset(
                'images/icon_frame.png',
                width: 24,
                height: 24,
              ),
              Spacer(),
              Image.asset(
                'images/icon_arrow_right.png',
                width: 24,
                height: 24,
              ),
            ],
          ),
        )
      ],
    );
  }
}
