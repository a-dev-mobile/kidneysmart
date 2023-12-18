// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_tracker_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageTrackerState _$PageTrackerStateFromJson(Map<String, dynamic> json) {
  return _PageTrackerState.fromJson(json);
}

/// @nodoc
mixin _$PageTrackerState {
  String? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageTrackerStateCopyWith<PageTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageTrackerStateCopyWith<$Res> {
  factory $PageTrackerStateCopyWith(
          PageTrackerState value, $Res Function(PageTrackerState) then) =
      _$PageTrackerStateCopyWithImpl<$Res, PageTrackerState>;
  @useResult
  $Res call({String? page});
}

/// @nodoc
class _$PageTrackerStateCopyWithImpl<$Res, $Val extends PageTrackerState>
    implements $PageTrackerStateCopyWith<$Res> {
  _$PageTrackerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageTrackerStateImplCopyWith<$Res>
    implements $PageTrackerStateCopyWith<$Res> {
  factory _$$PageTrackerStateImplCopyWith(_$PageTrackerStateImpl value,
          $Res Function(_$PageTrackerStateImpl) then) =
      __$$PageTrackerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? page});
}

/// @nodoc
class __$$PageTrackerStateImplCopyWithImpl<$Res>
    extends _$PageTrackerStateCopyWithImpl<$Res, _$PageTrackerStateImpl>
    implements _$$PageTrackerStateImplCopyWith<$Res> {
  __$$PageTrackerStateImplCopyWithImpl(_$PageTrackerStateImpl _value,
      $Res Function(_$PageTrackerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$PageTrackerStateImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageTrackerStateImpl implements _PageTrackerState {
  const _$PageTrackerStateImpl({this.page});

  factory _$PageTrackerStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageTrackerStateImplFromJson(json);

  @override
  final String? page;

  @override
  String toString() {
    return 'PageTrackerState(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageTrackerStateImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageTrackerStateImplCopyWith<_$PageTrackerStateImpl> get copyWith =>
      __$$PageTrackerStateImplCopyWithImpl<_$PageTrackerStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageTrackerStateImplToJson(
      this,
    );
  }
}

abstract class _PageTrackerState implements PageTrackerState {
  const factory _PageTrackerState({final String? page}) =
      _$PageTrackerStateImpl;

  factory _PageTrackerState.fromJson(Map<String, dynamic> json) =
      _$PageTrackerStateImpl.fromJson;

  @override
  String? get page;
  @override
  @JsonKey(ignore: true)
  _$$PageTrackerStateImplCopyWith<_$PageTrackerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
