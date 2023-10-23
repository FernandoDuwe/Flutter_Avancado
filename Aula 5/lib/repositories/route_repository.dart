import 'package:flutter_avancado_aula1/models/route_model.dart';

enum RouteRepositoryFilter { all, onlyExamples, onlyExercises }

class RouteRepository {
  static List<RouteModel> getAll() {
    List<RouteModel> list = [
      // Exemplos
      RouteModel.exemplo(title: "AspectRatio", route: "/exemplo/aspectRatio"),
      RouteModel.exemplo(title: "FittedBox", route: "/exemplo/fittedBox"),
      RouteModel.exemplo(
          title: "FractionallySizedBox", route: "/exemplo/fracSizedBox"),
      RouteModel.exemplo(
          title: "LayoutBuilder", route: "/exemplo/layoutBuilder"),
      RouteModel.exemplo(title: "MediaQuery", route: "/exemplo/mediaQuery"),
      RouteModel.exemplo(
          title: "OrientationBuilder", route: "/exemplo/orientationBuilder"),
      RouteModel.exemplo(
          title: "CustomSingleChildLayout",
          route: "/exemplo/customSingleChild"),
      RouteModel.exemplo(
          title: "CustomMultiChildLayout",
          route: "/exemplo/customMultiChildLayout"),
      RouteModel.exemplo(title: "Slivers", route: "/exemplo/slivers"),
      RouteModel.exemplo(title: "CustomPaint", route: "/exemplo/customPaint"),
      RouteModel.exemplo(
          title: "Animações controladas - 1", route: "/exemplo/animacoes/1"),
      RouteModel.exemplo(
          title: "Animated Widget", route: "/exemplo/animatedWidget"),
      RouteModel.exemplo(title: "AnimatedBuilder", route: "/exemplo/animatedBuilder"),
      RouteModel.exemplo(title: "Curved Animation", route: "/exemplo/curved"),
      RouteModel.exemplo(title: "AnimatedContainer", route: "/exemplo/animatedContainer"),
      RouteModel.exemplo(title: "AnimatedCrossFade", route: "/exemplo/animatedCrossFade"),
      RouteModel.exemplo(title: "DecoratedBox", route: "/exemplo/decoratedBox"),
      RouteModel.exemplo(title: "AnimatedSwitcher", route: "/exemplo/animatedSwitcher"),
      RouteModel.exemplo(title: "AnimatedList", route: "/exemplo/animatedList"),
      RouteModel.exemplo(title: "Dismissible", route: "/exemplo/dismissible"),
      RouteModel.exemplo(title: "Testes: Counter Widget", route: "/exemplo/tests/counter"),
      RouteModel.exemplo(title: "Testes: Login Widget", route: "/exemplo/tests/login"),
      RouteModel.exemplo(title: "Testes: Show do Milhão Widget", route: "/exemplo/tests/show_milhao"),

      // Exercícios
      RouteModel.exercicio(title: "Exercício 1", route: "/exercicio/1"),
      RouteModel.exercicio(title: "Exercício 2", route: "/exercicio/2"),
      RouteModel.exercicio(title: "Exercício 4", route: "/exercicio/4"),
      RouteModel.exercicio(title: "Exercício 6", route: "/exercicio/6"),
      RouteModel.exercicio(title: "Exercício 7", route: "/exercicio/7"),
      RouteModel.exercicio(title: "Exercício 8", route: "/exercicio/8"),
      RouteModel.exercicio(title: "Exercício 9", route: "/exercicio/9"),
      RouteModel.exercicio(title: "Exercício 10", route: "/exercicio/10"),
      RouteModel.exercicio(title: "Exercício 11", route: "/exercicio/11"),
      RouteModel.exercicio(title: "Exercício 12", route: "/exercicio/12"),
      RouteModel.exercicio(title: "Exercício 13", route: "/exercicio/13"),
      RouteModel.exercicio(title: "Exercício 16", route: "/exercicio/16"),
    ];

    list.sort((a, b) {
      return a.title.toLowerCase().compareTo(b.title.toLowerCase());
    });

    return list;
  }

  static List<RouteModel> search(String searchText, RouteRepositoryFilter filter) {
    List<RouteModel> list = RouteRepository.getAll();

    list.removeWhere((element) {
      if (filter != RouteRepositoryFilter.all) {
        if ((filter == RouteRepositoryFilter.onlyExamples) && (element.type != RouteType.exemplo))
          return true;

        if ((filter == RouteRepositoryFilter.onlyExercises) && (element.type != RouteType.exercicio))
          return true;
      }

      return (!element.title
          .toUpperCase()
          .contains(searchText.toUpperCase())) &&
          (!element.route.toUpperCase().contains(searchText.toUpperCase()));
    });

    return list;
  }
}
