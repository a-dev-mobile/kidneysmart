// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class ApiProductPriceItem {
  /* init: '' */
  final String date;
  /* init: 0 */
  final num amount;
  /* init: 0 */
  final num principal;
  /* init: 0 */
  final num interest_rate;
  /* init: 0 */
  final num commission_fee;
  /* init: '' */
  final String currency;
  /* init: 0 */
  final int term;
  /* init: '' */
  final String term_label;
  /* init: 0 */
  final num annual_percent_rate;
  /* init: 0 */
  final int product_id;
  /* init: '' */
  final String regular_payment_amount;
  /* init: '' */
  final String first_payment_date;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const ApiProductPriceItem({
    this.date = '',
    this.amount = 0,
    this.principal = 0,
    this.interest_rate = 0,
    this.commission_fee = 0,
    this.currency = '',
    this.term = 0,
    this.term_label = '',
    this.annual_percent_rate = 0,
    this.product_id = 0,
    this.regular_payment_amount = '',
    this.first_payment_date = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'amount': amount,
      'principal': principal,
      'interest_rate': interest_rate,
      'commission_fee': commission_fee,
      'currency': currency,
      'term': term,
      'term_label': term_label,
      'annual_percent_rate': annual_percent_rate,
      'product_id': product_id,
      'regular_payment_amount': regular_payment_amount,
      'first_payment_date': first_payment_date,
    };
  }

  factory ApiProductPriceItem.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ApiProductPriceItem();

    return ApiProductPriceItem(
      date: map['date'] as String? ?? '',
      amount: (map['amount'] as num?) ?? 0,
      principal: (map['principal'] as num?) ?? 0,
      interest_rate: (map['interest_rate'] as num?) ?? 0,
      commission_fee: (map['commission_fee'] as num?) ?? 0,
      currency: map['currency'] as String? ?? '',
      term: (map['term'] as num?)?.toInt() ?? 0,
      term_label: map['term_label'] as String? ?? '',
      annual_percent_rate: (map['annual_percent_rate'] as num?) ?? 0,
      product_id: (map['product_id'] as num?)?.toInt() ?? 0,
      regular_payment_amount: map['regular_payment_amount'] as String? ?? '',
      first_payment_date: map['first_payment_date'] as String? ?? '',
    );
  }

  ApiProductPriceItem copyWith({
    String? date,
    num? amount,
    num? principal,
    num? interest_rate,
    num? commission_fee,
    String? currency,
    int? term,
    String? term_label,
    num? annual_percent_rate,
    int? product_id,
    String? regular_payment_amount,
    String? first_payment_date,
  }) {
    return ApiProductPriceItem(
      date: date ?? this.date,
      amount: amount ?? this.amount,
      principal: principal ?? this.principal,
      interest_rate: interest_rate ?? this.interest_rate,
      commission_fee: commission_fee ?? this.commission_fee,
      currency: currency ?? this.currency,
      term: term ?? this.term,
      term_label: term_label ?? this.term_label,
      annual_percent_rate: annual_percent_rate ?? this.annual_percent_rate,
      product_id: product_id ?? this.product_id,
      regular_payment_amount:
          regular_payment_amount ?? this.regular_payment_amount,
      first_payment_date: first_payment_date ?? this.first_payment_date,
    );
  }

  String toJson() => json.encode(toMap());
  factory ApiProductPriceItem.fromJson(String source) =>
      ApiProductPriceItem.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiProductPriceItem &&
            (identical(
                  other.date,
                  date,
                ) ||
                other.date == date) &&
            (identical(
                  other.amount,
                  amount,
                ) ||
                other.amount == amount) &&
            (identical(
                  other.principal,
                  principal,
                ) ||
                other.principal == principal) &&
            (identical(
                  other.interest_rate,
                  interest_rate,
                ) ||
                other.interest_rate == interest_rate) &&
            (identical(
                  other.commission_fee,
                  commission_fee,
                ) ||
                other.commission_fee == commission_fee) &&
            (identical(
                  other.currency,
                  currency,
                ) ||
                other.currency == currency) &&
            (identical(
                  other.term,
                  term,
                ) ||
                other.term == term) &&
            (identical(
                  other.term_label,
                  term_label,
                ) ||
                other.term_label == term_label) &&
            (identical(
                  other.annual_percent_rate,
                  annual_percent_rate,
                ) ||
                other.annual_percent_rate == annual_percent_rate) &&
            (identical(
                  other.product_id,
                  product_id,
                ) ||
                other.product_id == product_id) &&
            (identical(
                  other.regular_payment_amount,
                  regular_payment_amount,
                ) ||
                other.regular_payment_amount == regular_payment_amount) &&
            (identical(
                  other.first_payment_date,
                  first_payment_date,
                ) ||
                other.first_payment_date == first_payment_date));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        date,
        amount,
        principal,
        interest_rate,
        commission_fee,
        currency,
        term,
        term_label,
        annual_percent_rate,
        product_id,
        regular_payment_amount,
        first_payment_date,
      ]);

  @override
  String toString() {
    return 'ApiProductPriceItem(date: $date, amount: $amount, principal: $principal, interest_rate: $interest_rate, commission_fee: $commission_fee, currency: $currency, term: $term, term_label: $term_label, annual_percent_rate: $annual_percent_rate, product_id: $product_id, regular_payment_amount: $regular_payment_amount, first_payment_date: $first_payment_date, )';
  }
}
