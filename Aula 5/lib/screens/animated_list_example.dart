import "package:flutter/material.dart";

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  GlobalKey<AnimatedListState> animatedList = GlobalKey<AnimatedListState>();

  List<String> itens = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          itens.add("Item dinâmico");

          animatedList.currentState!
              .insertItem(itens.length - 1, duration: Duration(seconds: 1));
        },
        child: Icon(Icons.add),
      ),
      body: AnimatedList(
        key: animatedList,
        initialItemCount: itens.length,
        itemBuilder: (context, index, animation) {
          return ScaleTransition(
            scale: animation,
            child: ListTile(
              title: Text(itens[index]),
              onTap: () {
                //itens.removeAt(index);

                animatedList.currentState!.removeItem(index,
                    (context, animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: Text(itens[index]),
                  );
                });
              },
            ),
          );
        },
      ),
    );
  }
}
