// ignore_for_file: non_constant_identifier_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/api/utils/helper_for_json.dart';

part 'api_payment_history.freezed.dart';
part 'api_payment_history.g.dart';

@freezed
class ApiPaymentHistory with _$ApiPaymentHistory {
  const factory ApiPaymentHistory({
    @JsonKey(
      name: 'loan_id',
    )
    @Default(0)
    int loanId,
    //
    @JsonKey(
      name: 'created_at',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? createdAt,
    //
    @JsonKey(
      name: 'operated_at',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? operatedAt,
    //
    @JsonKey(
      name: 'amount',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson,
    )
    @Default(0)
    num amount,
    //
    @Default('') String title,
    //
  }) = _ApiPaymentHistory;

  factory ApiPaymentHistory.fromJson(Map<String, dynamic> json) =>
      _$ApiPaymentHistoryFromJson(json);
}
