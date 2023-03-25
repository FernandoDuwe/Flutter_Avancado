import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proway_twitter/models/postModel.dart';

class PostRepository {
  Future<List<PostModel>> get() async {
    List<PostModel> posts = [];

    QuerySnapshot result =
        await FirebaseFirestore.instance.collection("posts").get();

    result.docs.forEach((element) {
      posts.add(PostModel.fromJson(element.data() as Map<String, dynamic>));
    });

    return posts;
  }
}
