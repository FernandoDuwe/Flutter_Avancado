import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import '../blocs/contactBloc.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      initialData: 0,
      stream: BlocProvider.getBloc<ContactBloc>().contactCounter,
      builder: (context, snapshot) {
        return Text("Lista de contatos ${snapshot.data!}");
      },
    );
  }
}
