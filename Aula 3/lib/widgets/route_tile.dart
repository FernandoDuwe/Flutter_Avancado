import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/route_model.dart";

class RouteTile extends StatelessWidget {
  final RouteModel routeModel;

  const RouteTile({required this.routeModel, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).pushNamed(routeModel.route),
      leading: (routeModel.type == RouteType.exercicio
          ? Icon(Icons.class_)
          : Icon(Icons.functions)),
      title: Text(routeModel.title),
      subtitle: Text(routeModel.route),
    );
  }
}
