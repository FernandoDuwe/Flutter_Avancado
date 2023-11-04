import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exercicio17/models/postModel.dart';

class FirestorePostRepository {
  StreamSink<List<PostModel>>? sinkList = null;

  List<PostModel> fromQuerySnapShot(QuerySnapshot prQuery) {
    List<PostModel> vrList = [];

    prQuery.docs.forEach((element) {
      vrList.add(PostModel.fromJSON(element.data() as Map<String, dynamic>));
    });

    return vrList.reversed.toList();
  }

  Future<List<PostModel>> get() async {
    if (sinkList != null) {
      FirebaseFirestore.instance.collection("posts").snapshots().listen((
          event) {
        this.sinkList!.add(this.fromQuerySnapShot(event));
      });

      return [];
    }

    QuerySnapshot vrQuery =
        await FirebaseFirestore.instance.collection("posts").get();

    return this.fromQuerySnapShot(vrQuery);
  }

  Future<void> addPost(PostModel prPost) async {
    await FirebaseFirestore.instance.collection("posts").add(prPost.toJSON());
  }
}
