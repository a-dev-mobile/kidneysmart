// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

@immutable
class ProductPriceInfo {
  /* init: '' */
  final String maxDay;
  /* init: '' */
  final String minDay;
  /* init: [] */
  final List<String> listDay;

  /* init: '' */
  final String maxAmount;
  /* init: '' */
  final String minAmount;
  /* init: [] */
  final List<String> listAmount;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const ProductPriceInfo({
    this.maxDay = '',
    this.minDay = '',
    this.listDay = const [],
    this.maxAmount = '',
    this.minAmount = '',
    this.listAmount = const [],
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDay': maxDay,
      'minDay': minDay,
      'listDay': listDay,
      'maxAmount': maxAmount,
      'minAmount': minAmount,
      'listAmount': listAmount,
    };
  }

  factory ProductPriceInfo.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ProductPriceInfo();

    return ProductPriceInfo(
      maxDay: map['maxDay'] as String? ?? '',
      minDay: map['minDay'] as String? ?? '',
      listDay: (map['listDay'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      maxAmount: map['maxAmount'] as String? ?? '',
      minAmount: map['minAmount'] as String? ?? '',
      listAmount: (map['listAmount'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );
  }

  ProductPriceInfo copyWith({
    String? maxDay,
    String? minDay,
    List<String>? listDay,
    String? maxAmount,
    String? minAmount,
    List<String>? listAmount,
  }) {
    return ProductPriceInfo(
      maxDay: maxDay ?? this.maxDay,
      minDay: minDay ?? this.minDay,
      listDay: listDay ?? this.listDay,
      maxAmount: maxAmount ?? this.maxAmount,
      minAmount: minAmount ?? this.minAmount,
      listAmount: listAmount ?? this.listAmount,
    );
  }

  String toJson() => json.encode(toMap());
  factory ProductPriceInfo.fromJson(String source) => ProductPriceInfo.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductPriceInfo &&
            (identical(
                  other.maxDay,
                  maxDay,
                ) ||
                other.maxDay == maxDay) &&
            (identical(
                  other.minDay,
                  minDay,
                ) ||
                other.minDay == minDay) &&
            const DeepCollectionEquality().equals(
              other.listDay,
              listDay,
            ) &&
            (identical(
                  other.maxAmount,
                  maxAmount,
                ) ||
                other.maxAmount == maxAmount) &&
            (identical(
                  other.minAmount,
                  minAmount,
                ) ||
                other.minAmount == minAmount) &&
            const DeepCollectionEquality().equals(
              other.listAmount,
              listAmount,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        maxDay,
        minDay,
        const DeepCollectionEquality().hash(
          listDay,
        ),
        maxAmount,
        minAmount,
        const DeepCollectionEquality().hash(
          listAmount,
        ),
      ]);

  @override
  String toString() {
    return 'ProductPriceInfo(maxDay: $maxDay, minDay: $minDay, listDay: $listDay, maxAmount: $maxAmount, minAmount: $minAmount, listAmount: $listAmount, )';
  }
}
