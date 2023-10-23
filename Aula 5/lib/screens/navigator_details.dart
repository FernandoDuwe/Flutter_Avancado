import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/repositories/route_repository.dart";

class NavigatorDetails extends StatelessWidget {
  final RouteRepositoryFilter filter;

  const NavigatorDetails({required this.filter, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.discount, color: Colors.orange),
            title: Text("Total: "),
            subtitle:
                Text(RouteRepository.search("", filter).length.toString()),
          )
        ],
      ),
      floatingActionButton: Hero(
        tag: (filter == RouteRepositoryFilter.onlyExamples
            ? "example_card"
            : "exercise_card"),
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: (filter == RouteRepositoryFilter.onlyExamples
                ? Colors.red
                : Colors.blue),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Text(
              (filter == RouteRepositoryFilter.onlyExamples
                  ? "Exemplos"
                  : "Exercícios"),
              style: TextStyle(fontSize: 26, color: Colors.white54)),
        ),
      ),
    );
  }
}
