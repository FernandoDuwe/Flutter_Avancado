class NewsModel {
  int id = 0;
  String title = "";
  String subTitle = "";
  String body = "";
  String coverURL = "";

  NewsModel(
      {required this.id,
      required this.title,
      required this.subTitle,
      required this.body,
      required this.coverURL});
}
