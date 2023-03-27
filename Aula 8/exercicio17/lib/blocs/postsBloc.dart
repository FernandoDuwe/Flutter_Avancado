import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/models/postModel.dart';
import 'package:exercicio17/repositories/firestorePostRepository.dart';

class PostsBloc extends BlocBase {
  FirestorePostRepository _repository = FirestorePostRepository();

  StreamController<List<PostModel>> _controller = StreamController<List<PostModel>>();
  StreamController<PostModel> _addPost = StreamController<PostModel>();

  // Stream para leitura da lista fora do bloc
  Stream<List<PostModel>> get stream => this._controller.stream;

  // Sink para adicionar novos posts por fora do bloc
  Sink<PostModel> get addPostSink => this._addPost.sink;

  PostsBloc() {
    this._repository.sinkList = this._controller.sink;

    this._repository.get();

    this._addPost.stream.listen(this._OnAddPost);
  }

  @override
  void dispose() {
    this._controller.close();
    this._addPost.close();

    super.dispose();
  }

  // Eventos
  void _OnAddPost(PostModel prNewModel) {
    this._repository.addPost(prNewModel);

    // this._controller.sink.add(this._repository.get());
  }
}