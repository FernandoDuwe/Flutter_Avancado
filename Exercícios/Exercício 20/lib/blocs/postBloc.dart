import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/models/postModel.dart';
import 'package:exercicio17/repositories/postRespository.dart';

class PostBloc extends BlocBase {
  PostRepository _postRepository = PostRepository();

  StreamController<List<PostModel>> _postsController = StreamController<List<PostModel>>();
  StreamController<PostModel> _addPostController = StreamController<PostModel>();
  StreamController<String> _searchController = StreamController<String>();

  // Retorna os posts
  Stream<List<PostModel>> get posts => this._postsController.stream;

  // Repositório
  PostRepository get repository => this._postRepository;

  // Sink para adicionar novos posts
  Sink get addPost => this._addPostController.sink;

  // Sink para pesquisar
  Sink get search => this._searchController.sink;

  PostBloc() {
    _postRepository.getPosts("").then((value) {
      this._postsController.sink.add(value);
    });

    this._addPostController.stream.listen(this._OnAddNewPost);

    this._searchController.stream.listen(this._OnSearch);
  }

  void _OnAddNewPost(PostModel prPost) async {
    await this._postRepository.addPost(prPost);

    _postRepository.getPosts("").then((value) {
      this._postsController.sink.add(value);
    });
  }

  void _OnSearch(String prSearch) {
    print(prSearch);

    _postRepository.getPosts(prSearch).then((value) {
      print(value);

      this._postsController.sink.add(value);
    });
  }

  @override
  void dispose() {
    this._postsController.close();
    this._addPostController.close();
    this._searchController.close();

    super.dispose();
  }
}