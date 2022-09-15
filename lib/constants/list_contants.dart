import 'package:monews_application/model/news.dart';

final List<String> categoryList = [
  'همه',
  'جهان',
  'ورزش',
  'تکنولوژی',
  'علم و دانش',
];

List<News> getHotNewsList() {
  var news1 = News(
    title: 'پــاسـخ منـفـی پــورتـــو بـه چلـسـی بـرای جذب طارمی با طعم تهدید!',
    description: '',
    Grouping: "group1",
    image: "asset1",
    newsAgencyIcon: 'ellipse1',
    newsAgencyName: "خبرگزاری آخرین خبر",
  );
  var news2 = News(
    title: "ورزش همراه با خواب کافی و غذای سالم ... سلامت انسان",
    description: '',
    Grouping: "group3",
    image: "asset0",
    newsAgencyIcon: 'ellipse2',
    newsAgencyName: "خبرگزاری زومیت",
  );
  var news3 = News(
    title: 'پــاسـخ منـفـی پــورتـــو بـه چلـسـی بـرای جذب طارمی با طعم تهدید!',
    description: '',
    Grouping: "group1",
    image: "asset1",
    newsAgencyIcon: 'ellipse3',
    newsAgencyName: "خبرگزاری ورزش سه",
  );
  var news4 = News(
    title: 'پــاسـخ منـفـی پــورتـــو بـه چلـسـی بـرای جذب طارمی با طعم تهدید!',
    description: '',
    Grouping: "group1",
    image: "asset1",
    newsAgencyIcon: 'ellipse1',
    newsAgencyName: "خبرگزاری آخرین خبر",
  );
  return [news1, news2, news3, news4];
}
