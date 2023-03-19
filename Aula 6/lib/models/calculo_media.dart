class CalculoMedia {

  double calculaMedia(List<double> prNotas) {
    if (prNotas.length == 0)
      return 0;

    double vrSoma = 0;

    // prNotas.forEach((element) => vrSoma += element );

    for (int i = 0; i < prNotas.length; i++)
      vrSoma += prNotas[i];

    return double.parse((vrSoma / prNotas.length).toStringAsFixed(2));
  }
}