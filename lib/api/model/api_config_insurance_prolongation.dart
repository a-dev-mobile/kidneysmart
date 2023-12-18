import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_config_insurance_prolongation.freezed.dart';
part 'api_config_insurance_prolongation.g.dart';

@freezed
class ApiConfigInsuranceProlongation with _$ApiConfigInsuranceProlongation {
  const factory ApiConfigInsuranceProlongation({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'is_three_month_insurance_enabled')
    bool? isThreeMonthInsuranceEnabled,
  }) = _ApiConfigInsuranceProlongation;

  factory ApiConfigInsuranceProlongation.fromJson(Map<String, Object?> json) =>
      _$ApiConfigInsuranceProlongationFromJson(json);
}
