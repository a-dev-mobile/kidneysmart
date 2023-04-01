extension ValidatorStringX on String {
  bool isMaxSymbol(int value) => RegExp('^.{$value,}\$').hasMatch(this);
  bool isMinSymbol(int value) => RegExp('^.{0,$value}\$').hasMatch(this);

  bool isDate() {
    try {
      final date = DateTime.parse(this);
      final y = date.year.toString().padLeft(4, '0');
      final m = date.month.toString().padLeft(2, '0');
      final d = date.day.toString().padLeft(2, '0');
      final newDt = '$y-$m-$d';

      return this == newDt;
    } catch (e) {
      return false;
    }
  }
}

extension ValidatorDoubleX on double {
  bool isMaxValue(double max) => this > max;
  bool isMinValue(double min) => this < min;
  bool isZero() => this == 0;
}
