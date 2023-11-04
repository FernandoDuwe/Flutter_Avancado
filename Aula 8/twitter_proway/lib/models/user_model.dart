class UserModel {
  String? id;

  String nickName = "";
  String image = "";

  UserModel({required this.nickName, required this.image, this.id});

  UserModel.fromJson(Map<String, dynamic> json, this.id) {
    this.nickName = json["nickname"];
    this.image = json["image"];
  }

  Map<String, dynamic> toJson() {
    return {"nickname": this.nickName, "image": this.image};
  }
}
