class News {
  News(
      {required this.title,
      required this.description,
      required this.image,
      required this.newsAgencyIcon,
      required this.newsAgencyName,
      required this.Grouping});
  String title;
  String description;
  String image;
  String newsAgencyIcon;
  String newsAgencyName;
  String Grouping;
}

class NewsAgency {
  NewsAgency({required this.name, required this.icon});
  String name;
  String icon;
}
