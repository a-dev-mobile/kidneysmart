// ignore_for_file: constant_identifier_names

part of 'health_profile_provider.dart';

extension _HelperMethodExtension on HealthProfileNotifier {
  List<bool> _getListBool({
    required int length,
    int? selectedIndex = -1,
  }) {
    return List.generate(
      length,
      (i) => selectedIndex == i,
    );
  }

  double _parseValue(String? v, HealthProfileState state) {
    return double.tryParse(v ?? state.weight.result) ?? -1;
  }

  double _roundDouble(double value, int places) {
    final mod = pow(10.0, places);

    return (value * mod).round().toDouble() / mod;
  }
}
