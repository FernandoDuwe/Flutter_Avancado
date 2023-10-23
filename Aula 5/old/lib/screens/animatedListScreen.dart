import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/animatedTaskTile.dart';

import '../models/taskModel.dart';

class AnimatedListScreen extends StatefulWidget {
  const AnimatedListScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedListScreen> createState() => _AnimatedListScreenState();
}

class _AnimatedListScreenState extends State<AnimatedListScreen> {
  GlobalKey<AnimatedListState> listState = GlobalKey<AnimatedListState>();

  List<TaskModel> _tasks = [
    TaskModel("Tarefa Teste", "Descrição da tarefa teste")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList"),
        actions: [
          IconButton(onPressed: () {
            this._tasks.add(TaskModel("Tarefa ${this._tasks.length}",
                "Descrição da tarefa ${this._tasks.length}"));

            this.listState.currentState!.insertItem(this._tasks.length - 1);
          }, icon: Icon(Icons.add)),
          IconButton(onPressed: () {
            TaskModel vrCurrentModel = this._tasks.last;

            this._tasks.remove(this._tasks.last);

            this.listState.currentState!.removeItem(
                this._tasks.length, (context, animation) =>
                AnimatedTaskTile(task: vrCurrentModel, animation: animation));
          }, icon: Icon(Icons.remove))
        ],
      ),
      body: AnimatedList(
        key: this.listState,
        initialItemCount: this._tasks.length,
        itemBuilder: (context, index, animation) {
          return AnimatedTaskTile(
              task: this._tasks[index], animation: animation);
        },
      ),
    );
  }
}
