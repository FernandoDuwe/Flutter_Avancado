class ICMS {
  double valorTotal = 0;
  double percentualEstado = 0;

  ICMS({ required this.valorTotal, required this.percentualEstado });

  double get valorAPagar {
    if (percentualEstado < 0)
      return 0;

    return double.parse((valorTotal * (percentualEstado / 100)).toStringAsFixed(2));
  }

  bool get isIsento => percentualEstado <= 0;
}