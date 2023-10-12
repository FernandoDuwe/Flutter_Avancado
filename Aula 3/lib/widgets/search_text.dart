import "dart:async";

import "package:flutter/material.dart";

typedef SearchTextOnSearch = void Function(String search);

class SearchText extends StatelessWidget {
  final SearchTextOnSearch onSearch;
  Timer? _timer;

  SearchText({ required this.onSearch, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        if (_timer != null)
          _timer!.cancel();

        _timer = Timer(Duration(seconds: 1), () {
          _timer!.cancel();
          _timer = null;

          onSearch(value);
        },);
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "Pesquisar",
        suffixIcon: Icon(Icons.search)
      ),
    );
  }
}
