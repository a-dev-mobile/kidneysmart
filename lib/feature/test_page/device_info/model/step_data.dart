// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_data.freezed.dart';
part 'step_data.g.dart';

@freezed
class StepData with _$StepData {
  const factory StepData({
    required String app_id,
    required String user_id,
    required Step step,
  }) = _StepData;

  factory StepData.fromJson(Map<String, dynamic> json) =>
      _$StepDataFromJson(json);
}

@freezed
class Step with _$Step {
  const factory Step({
    required String name,
    String? info,
  }) = _Step;

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}
