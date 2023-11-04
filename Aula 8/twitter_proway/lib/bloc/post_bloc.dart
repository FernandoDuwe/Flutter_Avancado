import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rxdart/subjects.dart';
import 'package:twitter_proway/models/post_model.dart';
import 'package:twitter_proway/models/user_model.dart';
import 'package:twitter_proway/repositories/post_repository.dart';

class PostBloc extends BlocBase {
  ReplaySubject<List<PostModel>> posts = ReplaySubject();

  Stream<List<PostModel>> get streamPosts => posts.stream;

  PostBloc(super.state) {
    PostRepository.getOnUpdate((list) {
      posts.sink.add(list);
    });
  }
}
