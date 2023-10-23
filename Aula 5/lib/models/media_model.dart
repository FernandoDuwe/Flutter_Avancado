import 'package:flutter_avancado_aula1/extensions/double_calc_extensions.dart';

import 'avaliacao_model.dart';

class MediaModel {
  double mediaMinima = 7.0;

  List<AvaliacaoModel> _avaliacoes = [];

  void addAvaliacao(AvaliacaoModel avaliacaoModel) {
    _avaliacoes.add(avaliacaoModel);
  }

  bool get passouAno => (mediaGeral >= mediaMinima);

  double get mediaGeral {
    if (_avaliacoes.isEmpty)
      return 0;

    double media = 0;

    _avaliacoes.forEach((element) => media += element.nota);

    return (media / _avaliacoes.length).formatarCasasDecimais();
  }
}