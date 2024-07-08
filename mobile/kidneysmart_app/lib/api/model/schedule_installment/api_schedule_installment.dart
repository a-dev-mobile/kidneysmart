// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:kidneysmart/api/utils/helper_for_json.dart';
import 'package:kidneysmart/core/enum/enum_payment_status.dart';

part 'api_schedule_installment.freezed.dart';
part 'api_schedule_installment.g.dart';

@freezed
class ApiScheduleInstallment with _$ApiScheduleInstallment {
  const factory ApiScheduleInstallment({
    //
    @JsonKey(
      name: 'status',
      fromJson: scheduleStatusFromJson,
      toJson: scheduleStatusToJson,
    )
    @Default(EnumScheduleStatus.error)
    EnumScheduleStatus enumScheduleStatus,
    //
    @JsonKey(
      name: 'date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? date,
    //
    //
    @JsonKey(
      name: 'start_date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? startDate,
    //
    @JsonKey(
      name: 'end_date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? endDate,

    //
    @JsonKey(
      name: 'payment',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson,
    )
    @Default(0)
    num payment,
    //
    @JsonKey(
      name: 'body',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson,
    )
    @Default(0)
    num body,
    //
    @JsonKey(
      name: 'commission',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson,
    )
    @Default(0)
    num commission,
  }) = _ApiScheduleInstallment;

  factory ApiScheduleInstallment.fromJson(Map<String, dynamic> json) =>
      _$ApiScheduleInstallmentFromJson(json);
}
