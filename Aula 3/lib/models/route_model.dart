enum RouteType { exercicio, exemplo }

class RouteModel {
  String title = "";
  String route = "";
  RouteType type = RouteType.exemplo;

  RouteModel({ required this.title, required this.route, required this.type });

  RouteModel.exercicio({ required this.title, required this.route }) {
    this.type = RouteType.exercicio;
  }

  RouteModel.exemplo({ required this.title, required this.route }) {
    this.type = RouteType.exemplo;
  }
}