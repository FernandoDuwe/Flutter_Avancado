import 'package:flutter/material.dart';
import 'package:twitter_proway/models/user_model.dart';

class TwitterUserAvatar extends StatelessWidget {
  final UserModel userModel;

  const TwitterUserAvatar({required this.userModel, super.key});

  @override
  Widget build(BuildContext context) {
    if (userModel.image.isEmpty)
      return CircleAvatar(
        backgroundColor: Colors.green,
        child: Icon(Icons.person),
      );

    return CircleAvatar(
      backgroundColor: Colors.green,
      foregroundImage: NetworkImage(userModel.image),
    );
  }
}
