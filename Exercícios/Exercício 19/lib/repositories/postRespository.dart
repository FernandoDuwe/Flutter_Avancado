import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../models/postModel.dart';

class PostRepository {
  Future<List<PostModel>> getPosts(String prSearch) async {
    List<PostModel> vrList = [];

    QuerySnapshot vrQuery =
        await FirebaseFirestore.instance.collection("posts").get();

    vrQuery.docs.reversed.forEach((element) {
      PostModel vrPost = PostModel.fromJson(element.data() as Map<String, dynamic>);

      if (vrPost.search(prSearch))
        vrList.add(vrPost);
    });

    return vrList;
  }

  Future<void> addPost(PostModel prModel) async {
    await FirebaseFirestore.instance.collection("posts").add(prModel.toMap());
  }
}
