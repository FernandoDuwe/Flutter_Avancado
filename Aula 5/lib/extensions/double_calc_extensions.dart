extension DoubleCalc on double {
  double formatarCasasDecimais() {
    double valor = this * 100;
    valor = valor.roundToDouble();

    return valor / 100;
  }
}