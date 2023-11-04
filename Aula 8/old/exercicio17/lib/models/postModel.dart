class PostModel {
  String title = "";
  String text = "";
  String username = "";

  PostModel();

  PostModel.fromJSON(Map<String, dynamic> prJSON) {
    this.title = prJSON["title"];
    this.text = prJSON["text"];
    this.username = prJSON["user"];
  }

  Map<String, dynamic> toJSON() {
    return {
      "title": this.title,
      "text": this.text,
      "user": this.username,
    };
  }
}