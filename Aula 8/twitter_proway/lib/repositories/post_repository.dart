import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:twitter_proway/models/post_model.dart';
import 'package:twitter_proway/models/user_model.dart';
import 'package:twitter_proway/repositories/user_repository.dart';

typedef PostRepositoryOnChange = void Function(List<PostModel> postsList);

class PostRepository {
  static Future<List<PostModel>> get() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("posts")
        .orderBy("created_at", descending: true)
        .get();

    if (querySnapshot.docs.isEmpty) return [];

    List<PostModel> posts = [];

    querySnapshot.docs.forEach((element) {
      posts.add(PostModel.fromJson(
          element.data() as Map<String, dynamic>, null, element.id));
    });

    for (PostModel post in posts)
      post.userObject = await UserRepository.getUser(post.user);

    return posts;
  }

  static Future<void> getOnUpdate(PostRepositoryOnChange onChange) async {
    FirebaseFirestore.instance
        .collection("posts")
        .orderBy("created_at", descending: true)
        .snapshots()
        .listen((event) async {
      if (event.docs.isEmpty) onChange([]);

      List<PostModel> posts = [];

      event.docs.forEach(
        (element) {
          posts.add(PostModel.fromJson(
              element.data() as Map<String, dynamic>, null, element.id));
        },
      );

      for (PostModel post in posts)
        post.userObject = await UserRepository.getUser(post.user);

      onChange(posts);
    });
  }
}
