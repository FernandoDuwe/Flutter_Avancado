import 'package:flutter/material.dart';
import 'package:twitter_proway/models/post_model.dart';
import 'package:twitter_proway/widgets/twitter_user_avatar.dart';

class PostTile extends StatelessWidget {
  final PostModel postModel;

  const PostTile({required this.postModel, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TwitterUserAvatar(
        userModel: postModel.userObject!,
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            postModel.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            postModel.userObject!.nickName,
            style: TextStyle(color: Colors.grey, fontSize: 10),
          )
        ],
      ),
      subtitle: Text(postModel.description),
    );
  }
}
