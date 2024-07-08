// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class ApiIncomeCalculation {
/*  */
  final int? sum;
// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const ApiIncomeCalculation({
    this.sum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sum': sum,
    };
  }

  factory ApiIncomeCalculation.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ApiIncomeCalculation();

    return ApiIncomeCalculation(
      sum: (map['sum'] as num?)?.toInt(),
    );
  }

  ApiIncomeCalculation copyWith({
    int? sum,
  }) {
    return ApiIncomeCalculation(
      sum: sum ?? this.sum,
    );
  }

  String toJson() => json.encode(toMap());
  factory ApiIncomeCalculation.fromJson(String source) =>
      ApiIncomeCalculation.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiIncomeCalculation &&
            (identical(
                  other.sum,
                  sum,
                ) ||
                other.sum == sum));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        sum,
      ]);

  @override
  String toString() {
    return 'ApiIncomeCalculation(sum: $sum, )';
  }
}
