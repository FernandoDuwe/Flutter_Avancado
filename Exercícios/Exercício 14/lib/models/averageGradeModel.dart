class AverageGradeModel {
  String name = "";

  AverageGradeModel(this.name);

  double calculate(List<double> prGradeList) {
    if (prGradeList.length == 0)
      return 0;

    double vrGradeSum = 0;

    for (double vrGrade in prGradeList)
      vrGradeSum += vrGrade;

    return double.parse((vrGradeSum / prGradeList.length).toStringAsFixed(2));
  }
}