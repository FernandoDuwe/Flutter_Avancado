import 'package:flutter/material.dart';
import 'package:proway_twitter/models/postModel.dart';

class PostTile extends StatelessWidget {
  final PostModel model;

  const PostTile({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Icon(
            Icons.person,
            color: Colors.blueAccent,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                this.model.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "@${this.model.userName}",
              style: TextStyle(color: Colors.blueGrey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(this.model.text)
          ],
        ))
      ],
    );
  }
}
