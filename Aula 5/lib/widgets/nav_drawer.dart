import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/repositories/route_repository.dart";
import "package:flutter_avancado_aula1/widgets/route_tile.dart";

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: Text(
              "Flutter Avançado",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ExpansionTile(
            leading: Icon(Icons.functions),
            title: Text("Exemplos"),
            children:
                RouteRepository.search("", RouteRepositoryFilter.onlyExamples)
                    .map((e) => RouteTile(routeModel: e))
                    .toList(),
          ),
          ExpansionTile(leading: Icon(Icons.class_), title: Text("Exercícios"), children:
          RouteRepository.search("", RouteRepositoryFilter.onlyExercises)
              .map((e) => RouteTile(routeModel: e))
              .toList(),),
        ],
      ),
    );
  }
}
