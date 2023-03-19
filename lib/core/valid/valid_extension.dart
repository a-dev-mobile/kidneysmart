extension ValidatorX on String {
  bool maxSymbol(int value) => RegExp('^.{$value,}\$').hasMatch(this);
  bool minSymbol(int value) => RegExp('^.{0,$value}\$').hasMatch(this);
}

extension StringIsDate on String {
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
