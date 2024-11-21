class NumberModel {
  final int num1;
  final int num2;
  final int num3;

  NumberModel(this.num1, this.num2, this.num3);

  int getMax() {
    return [num1, num2, num3].reduce((a, b) => a > b ? a : b);
  }
}
