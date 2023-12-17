// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_schedule_installment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiScheduleInstallment _$ApiScheduleInstallmentFromJson(
    Map<String, dynamic> json) {
  return _ApiScheduleInstallment.fromJson(json);
}

/// @nodoc
mixin _$ApiScheduleInstallment {
//
  @JsonKey(
      name: 'status',
      fromJson: scheduleStatusFromJson,
      toJson: scheduleStatusToJson)
  EnumScheduleStatus get enumScheduleStatus =>
      throw _privateConstructorUsedError; //
  @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get date => throw _privateConstructorUsedError; //
//
  @JsonKey(
      name: 'start_date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get startDate => throw _privateConstructorUsedError; //
  @JsonKey(name: 'end_date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get endDate => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'payment',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  num get payment => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'body',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  num get body => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'commission',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  num get commission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiScheduleInstallmentCopyWith<ApiScheduleInstallment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiScheduleInstallmentCopyWith<$Res> {
  factory $ApiScheduleInstallmentCopyWith(ApiScheduleInstallment value,
          $Res Function(ApiScheduleInstallment) then) =
      _$ApiScheduleInstallmentCopyWithImpl<$Res, ApiScheduleInstallment>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'status',
          fromJson: scheduleStatusFromJson,
          toJson: scheduleStatusToJson)
      EnumScheduleStatus enumScheduleStatus,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? date,
      @JsonKey(
          name: 'start_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? startDate,
      @JsonKey(
          name: 'end_date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? endDate,
      @JsonKey(
          name: 'payment',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      num payment,
      @JsonKey(
          name: 'body',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      num body,
      @JsonKey(
          name: 'commission',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      num commission});
}

/// @nodoc
class _$ApiScheduleInstallmentCopyWithImpl<$Res,
        $Val extends ApiScheduleInstallment>
    implements $ApiScheduleInstallmentCopyWith<$Res> {
  _$ApiScheduleInstallmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumScheduleStatus = null,
    Object? date = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? payment = null,
    Object? body = null,
    Object? commission = null,
  }) {
    return _then(_value.copyWith(
      enumScheduleStatus: null == enumScheduleStatus
          ? _value.enumScheduleStatus
          : enumScheduleStatus // ignore: cast_nullable_to_non_nullable
              as EnumScheduleStatus,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as num,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as num,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiScheduleInstallmentImplCopyWith<$Res>
    implements $ApiScheduleInstallmentCopyWith<$Res> {
  factory _$$ApiScheduleInstallmentImplCopyWith(
          _$ApiScheduleInstallmentImpl value,
          $Res Function(_$ApiScheduleInstallmentImpl) then) =
      __$$ApiScheduleInstallmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'status',
          fromJson: scheduleStatusFromJson,
          toJson: scheduleStatusToJson)
      EnumScheduleStatus enumScheduleStatus,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? date,
      @JsonKey(
          name: 'start_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? startDate,
      @JsonKey(
          name: 'end_date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? endDate,
      @JsonKey(
          name: 'payment',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      num payment,
      @JsonKey(
          name: 'body',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      num body,
      @JsonKey(
          name: 'commission',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      num commission});
}

/// @nodoc
class __$$ApiScheduleInstallmentImplCopyWithImpl<$Res>
    extends _$ApiScheduleInstallmentCopyWithImpl<$Res,
        _$ApiScheduleInstallmentImpl>
    implements _$$ApiScheduleInstallmentImplCopyWith<$Res> {
  __$$ApiScheduleInstallmentImplCopyWithImpl(
      _$ApiScheduleInstallmentImpl _value,
      $Res Function(_$ApiScheduleInstallmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumScheduleStatus = null,
    Object? date = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? payment = null,
    Object? body = null,
    Object? commission = null,
  }) {
    return _then(_$ApiScheduleInstallmentImpl(
      enumScheduleStatus: null == enumScheduleStatus
          ? _value.enumScheduleStatus
          : enumScheduleStatus // ignore: cast_nullable_to_non_nullable
              as EnumScheduleStatus,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as num,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as num,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiScheduleInstallmentImpl implements _ApiScheduleInstallment {
  const _$ApiScheduleInstallmentImpl(
      {@JsonKey(
          name: 'status',
          fromJson: scheduleStatusFromJson,
          toJson: scheduleStatusToJson)
      this.enumScheduleStatus = EnumScheduleStatus.error,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.date,
      @JsonKey(
          name: 'start_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      this.startDate,
      @JsonKey(
          name: 'end_date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.endDate,
      @JsonKey(
          name: 'payment',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      this.payment = 0,
      @JsonKey(
          name: 'body',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      this.body = 0,
      @JsonKey(
          name: 'commission',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      this.commission = 0});

  factory _$ApiScheduleInstallmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiScheduleInstallmentImplFromJson(json);

//
  @override
  @JsonKey(
      name: 'status',
      fromJson: scheduleStatusFromJson,
      toJson: scheduleStatusToJson)
  final EnumScheduleStatus enumScheduleStatus;
//
  @override
  @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? date;
//
//
  @override
  @JsonKey(
      name: 'start_date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? startDate;
//
  @override
  @JsonKey(name: 'end_date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? endDate;
//
  @override
  @JsonKey(
      name: 'payment',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  final num payment;
//
  @override
  @JsonKey(
      name: 'body',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  final num body;
//
  @override
  @JsonKey(
      name: 'commission',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  final num commission;

  @override
  String toString() {
    return 'ApiScheduleInstallment(enumScheduleStatus: $enumScheduleStatus, date: $date, startDate: $startDate, endDate: $endDate, payment: $payment, body: $body, commission: $commission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiScheduleInstallmentImpl &&
            (identical(other.enumScheduleStatus, enumScheduleStatus) ||
                other.enumScheduleStatus == enumScheduleStatus) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.commission, commission) ||
                other.commission == commission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enumScheduleStatus, date,
      startDate, endDate, payment, body, commission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiScheduleInstallmentImplCopyWith<_$ApiScheduleInstallmentImpl>
      get copyWith => __$$ApiScheduleInstallmentImplCopyWithImpl<
          _$ApiScheduleInstallmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiScheduleInstallmentImplToJson(
      this,
    );
  }
}

abstract class _ApiScheduleInstallment implements ApiScheduleInstallment {
  const factory _ApiScheduleInstallment(
      {@JsonKey(
          name: 'status',
          fromJson: scheduleStatusFromJson,
          toJson: scheduleStatusToJson)
      final EnumScheduleStatus enumScheduleStatus,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      final DateTime? date,
      @JsonKey(
          name: 'start_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      final DateTime? startDate,
      @JsonKey(
          name: 'end_date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      final DateTime? endDate,
      @JsonKey(
          name: 'payment',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      final num payment,
      @JsonKey(
          name: 'body',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      final num body,
      @JsonKey(
          name: 'commission',
          fromJson: convertToNumOrZeroFromJson,
          toJson: convertToNumOrZeroToJson)
      final num commission}) = _$ApiScheduleInstallmentImpl;

  factory _ApiScheduleInstallment.fromJson(Map<String, dynamic> json) =
      _$ApiScheduleInstallmentImpl.fromJson;

  @override //
  @JsonKey(
      name: 'status',
      fromJson: scheduleStatusFromJson,
      toJson: scheduleStatusToJson)
  EnumScheduleStatus get enumScheduleStatus;
  @override //
  @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get date;
  @override //
//
  @JsonKey(
      name: 'start_date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get startDate;
  @override //
  @JsonKey(name: 'end_date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get endDate;
  @override //
  @JsonKey(
      name: 'payment',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  num get payment;
  @override //
  @JsonKey(
      name: 'body',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  num get body;
  @override //
  @JsonKey(
      name: 'commission',
      fromJson: convertToNumOrZeroFromJson,
      toJson: convertToNumOrZeroToJson)
  num get commission;
  @override
  @JsonKey(ignore: true)
  _$$ApiScheduleInstallmentImplCopyWith<_$ApiScheduleInstallmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
