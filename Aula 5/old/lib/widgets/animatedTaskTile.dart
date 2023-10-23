import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/models/taskModel.dart';

class AnimatedTaskTile extends StatelessWidget {
  final TaskModel task;
  final Animation<double> animation;

  const AnimatedTaskTile(
      {required this.task, required this.animation, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: this.animation,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(this.task.title),
            Text(this.task.subTitle)
          ],
        ),
      )
    );
  }
}
