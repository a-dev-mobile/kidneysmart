String convertBankCardNumber(String? value) {
  if (value != null && RegExp(r'\D').allMatches(value).length >= 6) {
    final regex = RegExp(r'(\d{2})(\d{4})');
    final Match? match = regex.firstMatch(value.replaceAll(RegExp(r'\D'), ''));
    if (match != null) {
      return '${match.group(1)}** **** **** ${match.group(2)}';
    }
  }
  return 'Номер карты не найден';
}
