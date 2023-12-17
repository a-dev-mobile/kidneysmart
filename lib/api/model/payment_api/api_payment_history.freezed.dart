// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_payment_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiPaymentHistory _$ApiPaymentHistoryFromJson(Map<String, dynamic> json) {
  return _ApiPaymentHistory.fromJson(json);
}

/// @nodoc
mixin _$ApiPaymentHistory {
  @JsonKey(name: 'loan_id')
  int get loanId => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'created_at', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'operated_at', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get operatedAt => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'amount',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  num get amount => throw _privateConstructorUsedError; //
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiPaymentHistoryCopyWith<ApiPaymentHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiPaymentHistoryCopyWith<$Res> {
  factory $ApiPaymentHistoryCopyWith(
          ApiPaymentHistory value, $Res Function(ApiPaymentHistory) then) =
      _$ApiPaymentHistoryCopyWithImpl<$Res, ApiPaymentHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'loan_id') int loanId,
      @JsonKey(
          name: 'created_at',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(
          name: 'operated_at',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? operatedAt,
      @JsonKey(
          name: 'amount',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      num amount,
      String title});
}

/// @nodoc
class _$ApiPaymentHistoryCopyWithImpl<$Res, $Val extends ApiPaymentHistory>
    implements $ApiPaymentHistoryCopyWith<$Res> {
  _$ApiPaymentHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
    Object? createdAt = freezed,
    Object? operatedAt = freezed,
    Object? amount = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      loanId: null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      operatedAt: freezed == operatedAt
          ? _value.operatedAt
          : operatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiPaymentHistoryImplCopyWith<$Res>
    implements $ApiPaymentHistoryCopyWith<$Res> {
  factory _$$ApiPaymentHistoryImplCopyWith(_$ApiPaymentHistoryImpl value,
          $Res Function(_$ApiPaymentHistoryImpl) then) =
      __$$ApiPaymentHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'loan_id') int loanId,
      @JsonKey(
          name: 'created_at',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(
          name: 'operated_at',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? operatedAt,
      @JsonKey(
          name: 'amount',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      num amount,
      String title});
}

/// @nodoc
class __$$ApiPaymentHistoryImplCopyWithImpl<$Res>
    extends _$ApiPaymentHistoryCopyWithImpl<$Res, _$ApiPaymentHistoryImpl>
    implements _$$ApiPaymentHistoryImplCopyWith<$Res> {
  __$$ApiPaymentHistoryImplCopyWithImpl(_$ApiPaymentHistoryImpl _value,
      $Res Function(_$ApiPaymentHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
    Object? createdAt = freezed,
    Object? operatedAt = freezed,
    Object? amount = null,
    Object? title = null,
  }) {
    return _then(_$ApiPaymentHistoryImpl(
      loanId: null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      operatedAt: freezed == operatedAt
          ? _value.operatedAt
          : operatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiPaymentHistoryImpl implements _ApiPaymentHistory {
  const _$ApiPaymentHistoryImpl(
      {@JsonKey(name: 'loan_id') this.loanId = 0,
      @JsonKey(
          name: 'created_at',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      this.createdAt,
      @JsonKey(
          name: 'operated_at',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      this.operatedAt,
      @JsonKey(
          name: 'amount',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      this.amount = 0,
      this.title = ''});

  factory _$ApiPaymentHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiPaymentHistoryImplFromJson(json);

  @override
  @JsonKey(name: 'loan_id')
  final int loanId;
//
  @override
  @JsonKey(
      name: 'created_at', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? createdAt;
//
  @override
  @JsonKey(
      name: 'operated_at', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? operatedAt;
//
  @override
  @JsonKey(
      name: 'amount',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  final num amount;
//
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'ApiPaymentHistory(loanId: $loanId, createdAt: $createdAt, operatedAt: $operatedAt, amount: $amount, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiPaymentHistoryImpl &&
            (identical(other.loanId, loanId) || other.loanId == loanId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.operatedAt, operatedAt) ||
                other.operatedAt == operatedAt) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, loanId, createdAt, operatedAt, amount, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiPaymentHistoryImplCopyWith<_$ApiPaymentHistoryImpl> get copyWith =>
      __$$ApiPaymentHistoryImplCopyWithImpl<_$ApiPaymentHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiPaymentHistoryImplToJson(
      this,
    );
  }
}

abstract class _ApiPaymentHistory implements ApiPaymentHistory {
  const factory _ApiPaymentHistory(
      {@JsonKey(name: 'loan_id') final int loanId,
      @JsonKey(
          name: 'created_at',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(
          name: 'operated_at',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      final DateTime? operatedAt,
      @JsonKey(
          name: 'amount',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      final num amount,
      final String title}) = _$ApiPaymentHistoryImpl;

  factory _ApiPaymentHistory.fromJson(Map<String, dynamic> json) =
      _$ApiPaymentHistoryImpl.fromJson;

  @override
  @JsonKey(name: 'loan_id')
  int get loanId;
  @override //
  @JsonKey(
      name: 'created_at', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get createdAt;
  @override //
  @JsonKey(
      name: 'operated_at', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get operatedAt;
  @override //
  @JsonKey(
      name: 'amount',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  num get amount;
  @override //
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$ApiPaymentHistoryImplCopyWith<_$ApiPaymentHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
