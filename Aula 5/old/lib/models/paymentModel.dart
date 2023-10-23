class PaymentModel {
  double base = 0;

  PaymentModel({required this.base});

  double liquid() {
    return this.base - this.inss() - this.irpf();
  }

  double inss() {
    return (this.base * 0.07);
  }

  double irpf() {
    if (this.base > 2000)
      return 15;

    return 10;
  }

  bool isIsentaIR() {
    return this.base <= 1500;
  }
}