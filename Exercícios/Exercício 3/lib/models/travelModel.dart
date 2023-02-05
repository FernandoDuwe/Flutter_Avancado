import 'package:brasil_fields/brasil_fields.dart';

class TravelModel {
  String title = "";
  String subtitle = "";
  String description = "";
  String image = "";
  double price = 0.0;

  TravelModel(this.title, this.subtitle, this.description, this.image, this.price);

  String priceText() {
    return UtilBrasilFields.obterReal(this.price);
  }
}