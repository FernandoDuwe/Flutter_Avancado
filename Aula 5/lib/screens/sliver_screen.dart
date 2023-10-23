import "package:flutter/material.dart";

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 160,
            title: Text("Teste"),
            flexibleSpace: Container(
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/7/7e/Oktoberfest_-_A_maior_festa_alem%C3%A3_das_Am%C3%A9ricas_-_Blumenau_%E2%80%93_SC_-_panoramio.jpg",
                  fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.center,
                height: 100,
                child: Text(index.toString()),
              );
            }, childCount: 20),
          )
        ],
      ),
    );
  }
}
