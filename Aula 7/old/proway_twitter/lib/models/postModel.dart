class PostModel {
  String title = "";
  String text = "";
  String userName = "";

  PostModel({required this.title, required this.text, required this.userName});

  PostModel.fromJson(Map<String, dynamic> prJson) {
    this.title = prJson["title"];
    this.text = prJson["text"];
    this.userName = prJson["user"];
  }
}
