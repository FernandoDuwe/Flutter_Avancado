import 'package:twitter_proway/models/user_model.dart';

class PostModel {
  String? id;

  String description = "";
  String title = "";
  String user = "";
  UserModel? userObject;

  PostModel(
      {required this.description,
      required this.title,
      required this.user,
      this.userObject,
      this.id});

  PostModel.fromJson(Map<String, dynamic> json, this.userObject, this.id) {
    this.description = json["description"];
    this.title = json["title"];
    this.user = json["user"];
  }

  Map<String, dynamic> toJson() {
    return {
      "description": this.description,
      "title": this.title,
      "user": this.user,
      "created_at": DateTime.now()
    };
  }
}
