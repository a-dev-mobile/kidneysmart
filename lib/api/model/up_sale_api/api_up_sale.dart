// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/utils/string_utils.dart';

part 'api_up_sale.freezed.dart';
part 'api_up_sale.g.dart';

@freezed
class ApiUpSale with _$ApiUpSale {
  const factory ApiUpSale({
    @JsonKey(name: 'amount') num? amount,
    @JsonKey(name: 'refund_amount') num? refundAmount,
    @JsonKey(name: 'upSaleAmount') num? upSaleAmount,
  }) = _ApiUpSale;

  const ApiUpSale._();

  factory ApiUpSale.fromJson(Map<String, Object?> json) =>
      _$ApiUpSaleFromJson(json);

  // Formatted getters
  String get amountFormat => StringUtils.formatNumberWithGrouping(amount);
  String get refundAmountFormat =>
      StringUtils.formatNumberWithGrouping(refundAmount);
  String get upSaleAmountFormat =>
      StringUtils.formatNumberWithGrouping(upSaleAmount);
}
