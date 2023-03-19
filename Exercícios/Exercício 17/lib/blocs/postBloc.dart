import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/models/postModel.dart';
import 'package:exercicio17/repositories/postRespository.dart';

class PostBloc extends BlocBase {
  PostRepository _postRepository = PostRepository();

  StreamController<List<PostModel>> _postsController = StreamController<List<PostModel>>();

  // Retorna os posts
  Stream<List<PostModel>> get posts => this._postsController.stream;

  // Repositório
  PostRepository get repository => this._postRepository;

  PostBloc() {
    _postRepository.getPosts().then((value) {
      this._postsController.sink.add(value);
    });
  }

  @override
  void dispose() {
    this._postsController.close();

    super.dispose();
  }
}