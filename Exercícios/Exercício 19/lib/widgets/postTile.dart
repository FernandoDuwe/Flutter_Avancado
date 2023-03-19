import 'package:exercicio17/models/postModel.dart';
import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  final PostModel post;

  const PostTile({required this.post, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: CircleAvatar(
              child: Icon(Icons.person),
              backgroundColor: Colors.green,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(this.post.title, style: TextStyle(fontWeight: FontWeight.bold),),
                Text("@${this.post.user}", style: TextStyle(color: Colors.grey),),
                SizedBox(
                  height: 5,
                ),
                Text(this.post.text),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
