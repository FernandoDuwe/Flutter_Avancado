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
    return SizeTransition(
      sizeFactor: animation,
      axis: Axis.horizontal,
      axisAlignment: -1,
      child: ListTile(
          title: Text(this.task.title), subtitle: Text(this.task.subTitle)),
    );

    /*
    return ScaleTransition(
      scale: this.animation,
      child: ListTile(
        title: Text(this.task.title),
        subtitle: Text(this.task.subTitle),
      ),
    );
     */
  }
}
