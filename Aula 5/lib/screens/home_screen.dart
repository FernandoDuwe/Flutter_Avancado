import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/route_model.dart";
import "package:flutter_avancado_aula1/repositories/route_repository.dart";
import "package:flutter_avancado_aula1/screens/navigator_details.dart";
import "package:flutter_avancado_aula1/widgets/bottom_nav_bar.dart";
import "package:flutter_avancado_aula1/widgets/detail_card.dart";
import "package:flutter_avancado_aula1/widgets/nav_drawer.dart";
import 'package:flutter_avancado_aula1/widgets/route_tile.dart';
import "package:flutter_avancado_aula1/widgets/search_text.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchText = "";
  int currentFilter = 0;

  @override
  Widget build(BuildContext context) {
    List<RouteModel> routes = RouteRepository.search(
        searchText, RouteRepositoryFilter.values[currentFilter]);

    return Scaffold(
      appBar: AppBar(
        title: SearchText(
          onSearch: (search) {
            print(search);

            setState(() {
              searchText = search;
            });
          },
        ),
      ),
      drawer: NavDrawer(),
      body: ListView.builder(
          itemCount: routes.length + 1,
          itemBuilder: (context, index) {
            if (index == 0)
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DetailCard(
                      title: "Exemplos",
                      tag: "example_card",
                      count: RouteRepository.search(
                              "", RouteRepositoryFilter.onlyExamples)
                          .length,
                      onClick: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigatorDetails(filter: RouteRepositoryFilter.onlyExamples),));
                      },
                      color: Colors.red),
                  DetailCard(
                      title: "Exercícios",
                      tag: "exercise_card",
                      count: RouteRepository.search(
                              "", RouteRepositoryFilter.onlyExercises)
                          .length,
                      onClick: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigatorDetails(filter: RouteRepositoryFilter.onlyExercises),));
                      },
                      color: Colors.blue),
                ],
              );

            return RouteTile(routeModel: routes[index - 1]);
          }),
      bottomNavigationBar: BottomNavBar(
        onChange: (currentIndex) {
          setState(() {
            currentFilter = currentIndex;
          });
        },
      ),
    );
  }
}
