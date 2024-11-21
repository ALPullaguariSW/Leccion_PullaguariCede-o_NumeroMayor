import '../models/modelo_numero.dart';

class NumberController {
  NumberModel? _model;

  void setNumbers(int num1, int num2, int num3) {
    _model = NumberModel(num1, num2, num3);
  }

  int? getMaxNumber() {
    return _model?.getMax();
  }
}
