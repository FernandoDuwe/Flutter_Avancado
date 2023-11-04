import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:twitter_proway/models/user_model.dart';

class UserRepository {
  static Future<UserModel> getUser(String id) async {
    DocumentSnapshot documentSnapshot =
        await FirebaseFirestore.instance.collection("users").doc(id).get();

    if (!documentSnapshot.exists) return UserModel(nickName: "", image: "");

    return UserModel.fromJson(
        documentSnapshot.data() as Map<String, dynamic>, documentSnapshot.id);
  }
}
