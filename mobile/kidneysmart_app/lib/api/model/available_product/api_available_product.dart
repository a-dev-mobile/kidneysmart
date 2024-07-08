// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/api/utils/helper_for_json.dart';
import 'package:kidneysmart/core/enum/enum_available_product.dart';

part 'api_available_product.freezed.dart';
part 'api_available_product.g.dart';

@freezed
class ApiAvailableProductList with _$ApiAvailableProductList {
  const factory ApiAvailableProductList({
    required List<ApiAvailableProductItem> apiAvailableProductList,
  }) = _ApiAvailableProduct;

  factory ApiAvailableProductList.fromJson(Map<String, Object?> json) =>
      _$ApiAvailableProductListFromJson(json);
}

@freezed
class ApiAvailableProductItem with _$ApiAvailableProductItem {
  const factory ApiAvailableProductItem({
    @JsonKey(
      name: 'id',
      toJson: availableProductIdToJson,
      fromJson: availableProductIdFromJson,
    )
    EnumAvailableProduct? enumAvailableProduct,
    @JsonKey(name: 'type') String? type,
  }) = _ApiAvailableProductItem;

  factory ApiAvailableProductItem.fromJson(Map<String, Object?> json) =>
      _$ApiAvailableProductItemFromJson(json);
}
