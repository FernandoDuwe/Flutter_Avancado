import 'package:flutter/material.dart';

class SliverSceen extends StatelessWidget {
  const SliverSceen({Key? key}) : super(key: key);

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
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Minha Lista"),
              background: FlutterLogo(),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              height: 50,
              child: Text(index.toString()),
            );
          },
          childCount: 50,
        ),
        )],
      ),
    );
  }
}
