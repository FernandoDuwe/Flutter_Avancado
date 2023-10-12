import 'package:flutter_avancado_aula1/models/route_model.dart';

class RouteRepository {
  static List<RouteModel> getAll() {
    return [
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

      // Exercícios
      RouteModel.exercicio(title: "Exercício 1", route: "/exercicio/1"),
      RouteModel.exercicio(title: "Exercício 2", route: "/exercicio/2"),
      RouteModel.exercicio(title: "Exercício 4", route: "/exercicio/4"),
      RouteModel.exercicio(title: "Exercício 6", route: "/exercicio/6"),
      RouteModel.exercicio(title: "Exercício 7", route: "/exercicio/7"),
      RouteModel.exercicio(title: "Exercício 8", route: "/exercicio/8"),
      RouteModel.exercicio(title: "Exercício 9", route: "/exercicio/9")
    ];
  }

  static List<RouteModel> search(String searchText) {
    List<RouteModel> list = RouteRepository.getAll();

    if (searchText
        .trim()
        .isEmpty) return list;

    list.removeWhere((element) {
      return (!element.title
          .toUpperCase()
          .contains(searchText.toUpperCase())) &&
          (!element.route.toUpperCase().contains(searchText.toUpperCase()));
    });

    return list;
  }
}
