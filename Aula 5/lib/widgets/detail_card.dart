import "package:flutter/material.dart";

class DetailCard extends StatelessWidget {
  final String title;
  final int count;
  final VoidCallback onClick;
  final Color color;
  final String tag;

  const DetailCard(
      {required this.title,
      required this.count,
      required this.onClick,
      required this.color,
      required this.tag,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onClick,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Hero(
          tag: this.tag,
          child: Card(
            color: color,
            elevation: 20,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(this.title),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    this.count.toString(),
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
