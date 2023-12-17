// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryNotification _$HistoryNotificationFromJson(Map<String, dynamic> json) {
  return _HistoryNotification.fromJson(json);
}

/// @nodoc
mixin _$HistoryNotification {
  String? get date => throw _privateConstructorUsedError;
  List<ApiHistoryNotification>? get notifications =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryNotificationCopyWith<HistoryNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryNotificationCopyWith<$Res> {
  factory $HistoryNotificationCopyWith(
          HistoryNotification value, $Res Function(HistoryNotification) then) =
      _$HistoryNotificationCopyWithImpl<$Res, HistoryNotification>;
  @useResult
  $Res call({String? date, List<ApiHistoryNotification>? notifications});
}

/// @nodoc
class _$HistoryNotificationCopyWithImpl<$Res, $Val extends HistoryNotification>
    implements $HistoryNotificationCopyWith<$Res> {
  _$HistoryNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? notifications = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<ApiHistoryNotification>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryNotificationImplCopyWith<$Res>
    implements $HistoryNotificationCopyWith<$Res> {
  factory _$$HistoryNotificationImplCopyWith(_$HistoryNotificationImpl value,
          $Res Function(_$HistoryNotificationImpl) then) =
      __$$HistoryNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, List<ApiHistoryNotification>? notifications});
}

/// @nodoc
class __$$HistoryNotificationImplCopyWithImpl<$Res>
    extends _$HistoryNotificationCopyWithImpl<$Res, _$HistoryNotificationImpl>
    implements _$$HistoryNotificationImplCopyWith<$Res> {
  __$$HistoryNotificationImplCopyWithImpl(_$HistoryNotificationImpl _value,
      $Res Function(_$HistoryNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? notifications = freezed,
  }) {
    return _then(_$HistoryNotificationImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: freezed == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<ApiHistoryNotification>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryNotificationImpl implements _HistoryNotification {
  const _$HistoryNotificationImpl(
      {this.date, final List<ApiHistoryNotification>? notifications})
      : _notifications = notifications;

  factory _$HistoryNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryNotificationImplFromJson(json);

  @override
  final String? date;
  final List<ApiHistoryNotification>? _notifications;
  @override
  List<ApiHistoryNotification>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryNotification(date: $date, notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryNotificationImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryNotificationImplCopyWith<_$HistoryNotificationImpl> get copyWith =>
      __$$HistoryNotificationImplCopyWithImpl<_$HistoryNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryNotificationImplToJson(
      this,
    );
  }
}

abstract class _HistoryNotification implements HistoryNotification {
  const factory _HistoryNotification(
          {final String? date,
          final List<ApiHistoryNotification>? notifications}) =
      _$HistoryNotificationImpl;

  factory _HistoryNotification.fromJson(Map<String, dynamic> json) =
      _$HistoryNotificationImpl.fromJson;

  @override
  String? get date;
  @override
  List<ApiHistoryNotification>? get notifications;
  @override
  @JsonKey(ignore: true)
  _$$HistoryNotificationImplCopyWith<_$HistoryNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
