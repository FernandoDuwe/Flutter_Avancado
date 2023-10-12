import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/route_model.dart";
import "package:flutter_avancado_aula1/repositories/route_repository.dart";
import "package:flutter_avancado_aula1/widgets/bottom_nav_bar.dart";
import 'package:flutter_avancado_aula1/widgets/route_tile.dart';
import "package:flutter_avancado_aula1/widgets/search_text.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    List<RouteModel> routes = RouteRepository.search(searchText);

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
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (context, index) => RouteTile(routeModel: routes[index]),
      ),
      bottomNavigationBar: BottomNavBar(
        onChange: (currentIndex) {

        },
      ),
    );
  }
}
