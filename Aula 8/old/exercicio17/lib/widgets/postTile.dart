import 'package:exercicio17/models/postModel.dart';
import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  final PostModel model;

  const PostTile({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(this.model.title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(
                  "@" + this.model.username,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  this.model.text,
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
