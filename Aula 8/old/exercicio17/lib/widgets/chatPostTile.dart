import 'package:flutter/material.dart';

import '../models/postModel.dart';

class ChatPostTile extends StatelessWidget {
  final PostModel model;

  const ChatPostTile({required this.model, Key? key}) : super(key: key);

  bool _isMine() {
    return this.model.username == "fernando.duwe";
  }

  Widget _getAvatar() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CircleAvatar(
        child: Icon(Icons.person),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black12,
        alignment: (this._isMine() ? Alignment.topRight : Alignment.topLeft),
        child: Text(
          this.model.text,
          style: TextStyle(fontSize: 14),
        ));
  }
}
