// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_up_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiUpSale _$ApiUpSaleFromJson(Map<String, dynamic> json) {
  return _ApiUpSale.fromJson(json);
}

/// @nodoc
mixin _$ApiUpSale {
  @JsonKey(name: 'amount')
  num? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_amount')
  num? get refundAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'upSaleAmount')
  num? get upSaleAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUpSaleCopyWith<ApiUpSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUpSaleCopyWith<$Res> {
  factory $ApiUpSaleCopyWith(ApiUpSale value, $Res Function(ApiUpSale) then) =
      _$ApiUpSaleCopyWithImpl<$Res, ApiUpSale>;
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') num? amount,
      @JsonKey(name: 'refund_amount') num? refundAmount,
      @JsonKey(name: 'upSaleAmount') num? upSaleAmount});
}

/// @nodoc
class _$ApiUpSaleCopyWithImpl<$Res, $Val extends ApiUpSale>
    implements $ApiUpSaleCopyWith<$Res> {
  _$ApiUpSaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? refundAmount = freezed,
    Object? upSaleAmount = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      refundAmount: freezed == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      upSaleAmount: freezed == upSaleAmount
          ? _value.upSaleAmount
          : upSaleAmount // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiUpSaleImplCopyWith<$Res>
    implements $ApiUpSaleCopyWith<$Res> {
  factory _$$ApiUpSaleImplCopyWith(
          _$ApiUpSaleImpl value, $Res Function(_$ApiUpSaleImpl) then) =
      __$$ApiUpSaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') num? amount,
      @JsonKey(name: 'refund_amount') num? refundAmount,
      @JsonKey(name: 'upSaleAmount') num? upSaleAmount});
}

/// @nodoc
class __$$ApiUpSaleImplCopyWithImpl<$Res>
    extends _$ApiUpSaleCopyWithImpl<$Res, _$ApiUpSaleImpl>
    implements _$$ApiUpSaleImplCopyWith<$Res> {
  __$$ApiUpSaleImplCopyWithImpl(
      _$ApiUpSaleImpl _value, $Res Function(_$ApiUpSaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? refundAmount = freezed,
    Object? upSaleAmount = freezed,
  }) {
    return _then(_$ApiUpSaleImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      refundAmount: freezed == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      upSaleAmount: freezed == upSaleAmount
          ? _value.upSaleAmount
          : upSaleAmount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiUpSaleImpl extends _ApiUpSale {
  const _$ApiUpSaleImpl(
      {@JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'refund_amount') this.refundAmount,
      @JsonKey(name: 'upSaleAmount') this.upSaleAmount})
      : super._();

  factory _$ApiUpSaleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUpSaleImplFromJson(json);

  @override
  @JsonKey(name: 'amount')
  final num? amount;
  @override
  @JsonKey(name: 'refund_amount')
  final num? refundAmount;
  @override
  @JsonKey(name: 'upSaleAmount')
  final num? upSaleAmount;

  @override
  String toString() {
    return 'ApiUpSale(amount: $amount, refundAmount: $refundAmount, upSaleAmount: $upSaleAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUpSaleImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.upSaleAmount, upSaleAmount) ||
                other.upSaleAmount == upSaleAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, refundAmount, upSaleAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUpSaleImplCopyWith<_$ApiUpSaleImpl> get copyWith =>
      __$$ApiUpSaleImplCopyWithImpl<_$ApiUpSaleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUpSaleImplToJson(
      this,
    );
  }
}

abstract class _ApiUpSale extends ApiUpSale {
  const factory _ApiUpSale(
          {@JsonKey(name: 'amount') final num? amount,
          @JsonKey(name: 'refund_amount') final num? refundAmount,
          @JsonKey(name: 'upSaleAmount') final num? upSaleAmount}) =
      _$ApiUpSaleImpl;
  const _ApiUpSale._() : super._();

  factory _ApiUpSale.fromJson(Map<String, dynamic> json) =
      _$ApiUpSaleImpl.fromJson;

  @override
  @JsonKey(name: 'amount')
  num? get amount;
  @override
  @JsonKey(name: 'refund_amount')
  num? get refundAmount;
  @override
  @JsonKey(name: 'upSaleAmount')
  num? get upSaleAmount;
  @override
  @JsonKey(ignore: true)
  _$$ApiUpSaleImplCopyWith<_$ApiUpSaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
