import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:proway_twitter/models/postModel.dart';
import 'package:proway_twitter/repositories/postRepository.dart';

class PostBloc extends BlocBase {
  PostRepository repository = PostRepository();

  StreamController<List<PostModel>> _postsController =
      StreamController<List<PostModel>>();

  Stream<List<PostModel>> get posts => this._postsController.stream;

  PostBloc() {
    repository.get().then((value) {
      this._postsController.sink.add(value);
    });
  }

  @override
  void dispose() {
    this._postsController.close();

    // TODO: implement dispose
    super.dispose();
  }
}
