// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'package:kidneysmart/api/model/product_price/api_product_price_item.dart';
import 'package:kidneysmart/api/model/product_price/product_price_info.dart';

@immutable
class ProductPriceModel {
  /* init: const ProductPriceInfo() */
  final ProductPriceInfo info;
/* init: [] */
  final List<ApiProductPriceItem> listPrice;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const ProductPriceModel({
    this.info = const ProductPriceInfo(),
    this.listPrice = const [],
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': info.toMap(),
      'listPrice': listPrice.map((e) => e.toMap()).toList(),
    };
  }

  factory ProductPriceModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ProductPriceModel();

    return ProductPriceModel(
      info: map['info'] != null
          ? ProductPriceInfo.fromMap(
              Map<String, dynamic>.from(
                map['info'] as Map,
              ),
            )
          : const ProductPriceInfo(),
      listPrice: map['listPrice'] != null
          ? (map['listPrice'] as List<dynamic>)
              .map(
                (e) => ApiProductPriceItem.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const [],
    );
  }

  ProductPriceModel copyWith({
    ProductPriceInfo? info,
    List<ApiProductPriceItem>? listPrice,
  }) {
    return ProductPriceModel(
      info: info ?? this.info,
      listPrice: listPrice ?? this.listPrice,
    );
  }

  String toJson() => json.encode(toMap());
  factory ProductPriceModel.fromJson(String source) =>
      ProductPriceModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductPriceModel &&
            (identical(
                  other.info,
                  info,
                ) ||
                other.info == info) &&
            const DeepCollectionEquality().equals(
              other.listPrice,
              listPrice,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        info,
        const DeepCollectionEquality().hash(
          listPrice,
        ),
      ]);

  @override
  String toString() {
    return 'ProductPriceModel(info: $info, listPrice: $listPrice, )';
  }
}
