import 'package:flutter/material.dart';

class EditUserButton extends StatelessWidget {
  const EditUserButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.of(context).pushNamed("/myUser"),
        icon: Icon(Icons.person));
  }
}
