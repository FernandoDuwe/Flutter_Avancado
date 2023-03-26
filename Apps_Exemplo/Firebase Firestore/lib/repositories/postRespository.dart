import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_example/models/postModel.dart';

class PostRepository {
  Future<List<PostModel>> getPosts() async {
    List<PostModel> vrList = [];

    QuerySnapshot vrQuery =
        await FirebaseFirestore.instance.collection("posts").get();

    vrQuery.docs.forEach((element) {
      vrList.add(PostModel.fromJson(element.data() as Map<String, dynamic>));
    });

    return vrList;
  }

  Future<void> addPost(PostModel prModel) async {
    await FirebaseFirestore.instance.collection("posts").add(prModel.toMap());
  }
}
