import 'package:bloc_exemplo/bloc/ContactBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
        stream: BlocProvider.getBloc<ContactBloc>().favoriteCounter,
        builder: (context, snapshot) {
          int vrCounter = snapshot.data ?? 0;

          return Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: Text("Lista de contatos")),
              Icon(Icons.favorite, color: Colors.red),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(vrCounter.toString()),
              ),
            ],
          );
        });
  }
}
