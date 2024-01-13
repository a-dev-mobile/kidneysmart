// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_tracker_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScreenTrackerState _$ScreenTrackerStateFromJson(Map<String, dynamic> json) {
  return _ScreenTrackerState.fromJson(json);
}

/// @nodoc
mixin _$ScreenTrackerState {
  String? get current => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScreenTrackerStateCopyWith<ScreenTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenTrackerStateCopyWith<$Res> {
  factory $ScreenTrackerStateCopyWith(
          ScreenTrackerState value, $Res Function(ScreenTrackerState) then) =
      _$ScreenTrackerStateCopyWithImpl<$Res, ScreenTrackerState>;
  @useResult
  $Res call({String? current, String? previous});
}

/// @nodoc
class _$ScreenTrackerStateCopyWithImpl<$Res, $Val extends ScreenTrackerState>
    implements $ScreenTrackerStateCopyWith<$Res> {
  _$ScreenTrackerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = freezed,
    Object? previous = freezed,
  }) {
    return _then(_value.copyWith(
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenTrackerStateImplCopyWith<$Res>
    implements $ScreenTrackerStateCopyWith<$Res> {
  factory _$$ScreenTrackerStateImplCopyWith(_$ScreenTrackerStateImpl value,
          $Res Function(_$ScreenTrackerStateImpl) then) =
      __$$ScreenTrackerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? current, String? previous});
}

/// @nodoc
class __$$ScreenTrackerStateImplCopyWithImpl<$Res>
    extends _$ScreenTrackerStateCopyWithImpl<$Res, _$ScreenTrackerStateImpl>
    implements _$$ScreenTrackerStateImplCopyWith<$Res> {
  __$$ScreenTrackerStateImplCopyWithImpl(_$ScreenTrackerStateImpl _value,
      $Res Function(_$ScreenTrackerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$ScreenTrackerStateImpl(
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenTrackerStateImpl implements _ScreenTrackerState {
  const _$ScreenTrackerStateImpl({this.current, this.previous});

  factory _$ScreenTrackerStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenTrackerStateImplFromJson(json);

  @override
  final String? current;
  @override
  final String? previous;

  @override
  String toString() {
    return 'ScreenTrackerState(current: $current, previous: $previous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenTrackerStateImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.previous, previous) ||
                other.previous == previous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, previous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenTrackerStateImplCopyWith<_$ScreenTrackerStateImpl> get copyWith =>
      __$$ScreenTrackerStateImplCopyWithImpl<_$ScreenTrackerStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenTrackerStateImplToJson(
      this,
    );
  }
}

abstract class _ScreenTrackerState implements ScreenTrackerState {
  const factory _ScreenTrackerState(
      {final String? current,
      final String? previous}) = _$ScreenTrackerStateImpl;

  factory _ScreenTrackerState.fromJson(Map<String, dynamic> json) =
      _$ScreenTrackerStateImpl.fromJson;

  @override
  String? get current;
  @override
  String? get previous;
  @override
  @JsonKey(ignore: true)
  _$$ScreenTrackerStateImplCopyWith<_$ScreenTrackerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
