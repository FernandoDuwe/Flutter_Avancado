class PostModel {
  String id = "";
  String title = "";
  String text = "";
  String user = "";

  PostModel({required this.title, required this.text, required this.user});

  PostModel.fromJson(Map<String, dynamic> prJson) {
    //this.id = prJson["id"];
    this.title = prJson["title"];
    this.text = prJson["text"];
    this.user = prJson["user"];
  }

  Map<String, dynamic> toMap() {
    return {"title": this.title, "text": this.text, "user": this.user};
  }

  bool search(String prSearch) {
    return prSearch == "" ||
        this.title.toUpperCase().contains(prSearch.toUpperCase()) ||
        this.text.toUpperCase().contains(prSearch.toUpperCase()) ||
        this.user.toUpperCase().contains(prSearch.toUpperCase());
  }
}
