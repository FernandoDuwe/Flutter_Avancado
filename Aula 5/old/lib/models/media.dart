class Media {
  // Atributos
  List<double> notas = [];
  String nomeAluno = "";

  // método construtor
  Media(this.nomeAluno, this.notas);

  // Métodos
  double mediaAluno() {
    double vrSoma = 0;

    for (int i = 0; i < this.notas.length; i++)
      vrSoma = vrSoma + this.notas[i];

    return vrSoma / this.notas.length;
  }
}