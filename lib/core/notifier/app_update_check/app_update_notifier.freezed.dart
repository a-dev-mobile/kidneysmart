// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_update_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUpdateState _$AppUpdateStateFromJson(Map<String, dynamic> json) {
  return _AppUpdateState.fromJson(json);
}

/// @nodoc
mixin _$AppUpdateState {
  EnumStatus get enumStatus => throw _privateConstructorUsedError;
  ApiAppUpdateCheckRes get apiAppUpdateCheckRes =>
      throw _privateConstructorUsedError;
  UpdateProgress get updateProgress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUpdateStateCopyWith<AppUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUpdateStateCopyWith<$Res> {
  factory $AppUpdateStateCopyWith(
          AppUpdateState value, $Res Function(AppUpdateState) then) =
      _$AppUpdateStateCopyWithImpl<$Res, AppUpdateState>;
  @useResult
  $Res call(
      {EnumStatus enumStatus,
      ApiAppUpdateCheckRes apiAppUpdateCheckRes,
      UpdateProgress updateProgress});

  $ApiAppUpdateCheckResCopyWith<$Res> get apiAppUpdateCheckRes;
  $UpdateProgressCopyWith<$Res> get updateProgress;
}

/// @nodoc
class _$AppUpdateStateCopyWithImpl<$Res, $Val extends AppUpdateState>
    implements $AppUpdateStateCopyWith<$Res> {
  _$AppUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumStatus = null,
    Object? apiAppUpdateCheckRes = null,
    Object? updateProgress = null,
  }) {
    return _then(_value.copyWith(
      enumStatus: null == enumStatus
          ? _value.enumStatus
          : enumStatus // ignore: cast_nullable_to_non_nullable
              as EnumStatus,
      apiAppUpdateCheckRes: null == apiAppUpdateCheckRes
          ? _value.apiAppUpdateCheckRes
          : apiAppUpdateCheckRes // ignore: cast_nullable_to_non_nullable
              as ApiAppUpdateCheckRes,
      updateProgress: null == updateProgress
          ? _value.updateProgress
          : updateProgress // ignore: cast_nullable_to_non_nullable
              as UpdateProgress,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAppUpdateCheckResCopyWith<$Res> get apiAppUpdateCheckRes {
    return $ApiAppUpdateCheckResCopyWith<$Res>(_value.apiAppUpdateCheckRes,
        (value) {
      return _then(_value.copyWith(apiAppUpdateCheckRes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateProgressCopyWith<$Res> get updateProgress {
    return $UpdateProgressCopyWith<$Res>(_value.updateProgress, (value) {
      return _then(_value.copyWith(updateProgress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppUpdateStateImplCopyWith<$Res>
    implements $AppUpdateStateCopyWith<$Res> {
  factory _$$AppUpdateStateImplCopyWith(_$AppUpdateStateImpl value,
          $Res Function(_$AppUpdateStateImpl) then) =
      __$$AppUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumStatus enumStatus,
      ApiAppUpdateCheckRes apiAppUpdateCheckRes,
      UpdateProgress updateProgress});

  @override
  $ApiAppUpdateCheckResCopyWith<$Res> get apiAppUpdateCheckRes;
  @override
  $UpdateProgressCopyWith<$Res> get updateProgress;
}

/// @nodoc
class __$$AppUpdateStateImplCopyWithImpl<$Res>
    extends _$AppUpdateStateCopyWithImpl<$Res, _$AppUpdateStateImpl>
    implements _$$AppUpdateStateImplCopyWith<$Res> {
  __$$AppUpdateStateImplCopyWithImpl(
      _$AppUpdateStateImpl _value, $Res Function(_$AppUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumStatus = null,
    Object? apiAppUpdateCheckRes = null,
    Object? updateProgress = null,
  }) {
    return _then(_$AppUpdateStateImpl(
      enumStatus: null == enumStatus
          ? _value.enumStatus
          : enumStatus // ignore: cast_nullable_to_non_nullable
              as EnumStatus,
      apiAppUpdateCheckRes: null == apiAppUpdateCheckRes
          ? _value.apiAppUpdateCheckRes
          : apiAppUpdateCheckRes // ignore: cast_nullable_to_non_nullable
              as ApiAppUpdateCheckRes,
      updateProgress: null == updateProgress
          ? _value.updateProgress
          : updateProgress // ignore: cast_nullable_to_non_nullable
              as UpdateProgress,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUpdateStateImpl implements _AppUpdateState {
  const _$AppUpdateStateImpl(
      {this.enumStatus = EnumStatus.init,
      this.apiAppUpdateCheckRes = const ApiAppUpdateCheckRes.init(),
      this.updateProgress = const UpdateProgress.init()});

  factory _$AppUpdateStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUpdateStateImplFromJson(json);

  @override
  @JsonKey()
  final EnumStatus enumStatus;
  @override
  @JsonKey()
  final ApiAppUpdateCheckRes apiAppUpdateCheckRes;
  @override
  @JsonKey()
  final UpdateProgress updateProgress;

  @override
  String toString() {
    return 'AppUpdateState(enumStatus: $enumStatus, apiAppUpdateCheckRes: $apiAppUpdateCheckRes, updateProgress: $updateProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUpdateStateImpl &&
            (identical(other.enumStatus, enumStatus) ||
                other.enumStatus == enumStatus) &&
            (identical(other.apiAppUpdateCheckRes, apiAppUpdateCheckRes) ||
                other.apiAppUpdateCheckRes == apiAppUpdateCheckRes) &&
            (identical(other.updateProgress, updateProgress) ||
                other.updateProgress == updateProgress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, enumStatus, apiAppUpdateCheckRes, updateProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUpdateStateImplCopyWith<_$AppUpdateStateImpl> get copyWith =>
      __$$AppUpdateStateImplCopyWithImpl<_$AppUpdateStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUpdateStateImplToJson(
      this,
    );
  }
}

abstract class _AppUpdateState implements AppUpdateState {
  const factory _AppUpdateState(
      {final EnumStatus enumStatus,
      final ApiAppUpdateCheckRes apiAppUpdateCheckRes,
      final UpdateProgress updateProgress}) = _$AppUpdateStateImpl;

  factory _AppUpdateState.fromJson(Map<String, dynamic> json) =
      _$AppUpdateStateImpl.fromJson;

  @override
  EnumStatus get enumStatus;
  @override
  ApiAppUpdateCheckRes get apiAppUpdateCheckRes;
  @override
  UpdateProgress get updateProgress;
  @override
  @JsonKey(ignore: true)
  _$$AppUpdateStateImplCopyWith<_$AppUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateProgress _$UpdateProgressFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'init':
      return UpdateProgressInit.fromJson(json);
    case 'load':
      return UpdateProgressLoad.fromJson(json);
    case 'success':
      return UpdateProgressSuccess.fromJson(json);
    case 'error':
      return UpdateProgressError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UpdateProgress',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UpdateProgress {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int received, int total) load,
    required TResult Function(String filePath) success,
    required TResult Function(String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int received, int total)? load,
    TResult? Function(String filePath)? success,
    TResult? Function(String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int received, int total)? load,
    TResult Function(String filePath)? success,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProgressInit value) init,
    required TResult Function(UpdateProgressLoad value) load,
    required TResult Function(UpdateProgressSuccess value) success,
    required TResult Function(UpdateProgressError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProgressInit value)? init,
    TResult? Function(UpdateProgressLoad value)? load,
    TResult? Function(UpdateProgressSuccess value)? success,
    TResult? Function(UpdateProgressError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProgressInit value)? init,
    TResult Function(UpdateProgressLoad value)? load,
    TResult Function(UpdateProgressSuccess value)? success,
    TResult Function(UpdateProgressError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProgressCopyWith<$Res> {
  factory $UpdateProgressCopyWith(
          UpdateProgress value, $Res Function(UpdateProgress) then) =
      _$UpdateProgressCopyWithImpl<$Res, UpdateProgress>;
}

/// @nodoc
class _$UpdateProgressCopyWithImpl<$Res, $Val extends UpdateProgress>
    implements $UpdateProgressCopyWith<$Res> {
  _$UpdateProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateProgressInitImplCopyWith<$Res> {
  factory _$$UpdateProgressInitImplCopyWith(_$UpdateProgressInitImpl value,
          $Res Function(_$UpdateProgressInitImpl) then) =
      __$$UpdateProgressInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateProgressInitImplCopyWithImpl<$Res>
    extends _$UpdateProgressCopyWithImpl<$Res, _$UpdateProgressInitImpl>
    implements _$$UpdateProgressInitImplCopyWith<$Res> {
  __$$UpdateProgressInitImplCopyWithImpl(_$UpdateProgressInitImpl _value,
      $Res Function(_$UpdateProgressInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UpdateProgressInitImpl implements UpdateProgressInit {
  const _$UpdateProgressInitImpl({final String? $type})
      : $type = $type ?? 'init';

  factory _$UpdateProgressInitImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProgressInitImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UpdateProgress.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateProgressInitImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int received, int total) load,
    required TResult Function(String filePath) success,
    required TResult Function(String msg) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int received, int total)? load,
    TResult? Function(String filePath)? success,
    TResult? Function(String msg)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int received, int total)? load,
    TResult Function(String filePath)? success,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProgressInit value) init,
    required TResult Function(UpdateProgressLoad value) load,
    required TResult Function(UpdateProgressSuccess value) success,
    required TResult Function(UpdateProgressError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProgressInit value)? init,
    TResult? Function(UpdateProgressLoad value)? load,
    TResult? Function(UpdateProgressSuccess value)? success,
    TResult? Function(UpdateProgressError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProgressInit value)? init,
    TResult Function(UpdateProgressLoad value)? load,
    TResult Function(UpdateProgressSuccess value)? success,
    TResult Function(UpdateProgressError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProgressInitImplToJson(
      this,
    );
  }
}

abstract class UpdateProgressInit implements UpdateProgress {
  const factory UpdateProgressInit() = _$UpdateProgressInitImpl;

  factory UpdateProgressInit.fromJson(Map<String, dynamic> json) =
      _$UpdateProgressInitImpl.fromJson;
}

/// @nodoc
abstract class _$$UpdateProgressLoadImplCopyWith<$Res> {
  factory _$$UpdateProgressLoadImplCopyWith(_$UpdateProgressLoadImpl value,
          $Res Function(_$UpdateProgressLoadImpl) then) =
      __$$UpdateProgressLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int received, int total});
}

/// @nodoc
class __$$UpdateProgressLoadImplCopyWithImpl<$Res>
    extends _$UpdateProgressCopyWithImpl<$Res, _$UpdateProgressLoadImpl>
    implements _$$UpdateProgressLoadImplCopyWith<$Res> {
  __$$UpdateProgressLoadImplCopyWithImpl(_$UpdateProgressLoadImpl _value,
      $Res Function(_$UpdateProgressLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? received = null,
    Object? total = null,
  }) {
    return _then(_$UpdateProgressLoadImpl(
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProgressLoadImpl implements UpdateProgressLoad {
  const _$UpdateProgressLoadImpl(
      {this.received = 0, this.total = 0, final String? $type})
      : $type = $type ?? 'load';

  factory _$UpdateProgressLoadImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProgressLoadImplFromJson(json);

  @override
  @JsonKey()
  final int received;
  @override
  @JsonKey()
  final int total;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UpdateProgress.load(received: $received, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProgressLoadImpl &&
            (identical(other.received, received) ||
                other.received == received) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, received, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProgressLoadImplCopyWith<_$UpdateProgressLoadImpl> get copyWith =>
      __$$UpdateProgressLoadImplCopyWithImpl<_$UpdateProgressLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int received, int total) load,
    required TResult Function(String filePath) success,
    required TResult Function(String msg) error,
  }) {
    return load(received, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int received, int total)? load,
    TResult? Function(String filePath)? success,
    TResult? Function(String msg)? error,
  }) {
    return load?.call(received, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int received, int total)? load,
    TResult Function(String filePath)? success,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(received, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProgressInit value) init,
    required TResult Function(UpdateProgressLoad value) load,
    required TResult Function(UpdateProgressSuccess value) success,
    required TResult Function(UpdateProgressError value) error,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProgressInit value)? init,
    TResult? Function(UpdateProgressLoad value)? load,
    TResult? Function(UpdateProgressSuccess value)? success,
    TResult? Function(UpdateProgressError value)? error,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProgressInit value)? init,
    TResult Function(UpdateProgressLoad value)? load,
    TResult Function(UpdateProgressSuccess value)? success,
    TResult Function(UpdateProgressError value)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProgressLoadImplToJson(
      this,
    );
  }
}

abstract class UpdateProgressLoad implements UpdateProgress {
  const factory UpdateProgressLoad({final int received, final int total}) =
      _$UpdateProgressLoadImpl;

  factory UpdateProgressLoad.fromJson(Map<String, dynamic> json) =
      _$UpdateProgressLoadImpl.fromJson;

  int get received;
  int get total;
  @JsonKey(ignore: true)
  _$$UpdateProgressLoadImplCopyWith<_$UpdateProgressLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProgressSuccessImplCopyWith<$Res> {
  factory _$$UpdateProgressSuccessImplCopyWith(
          _$UpdateProgressSuccessImpl value,
          $Res Function(_$UpdateProgressSuccessImpl) then) =
      __$$UpdateProgressSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class __$$UpdateProgressSuccessImplCopyWithImpl<$Res>
    extends _$UpdateProgressCopyWithImpl<$Res, _$UpdateProgressSuccessImpl>
    implements _$$UpdateProgressSuccessImplCopyWith<$Res> {
  __$$UpdateProgressSuccessImplCopyWithImpl(_$UpdateProgressSuccessImpl _value,
      $Res Function(_$UpdateProgressSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_$UpdateProgressSuccessImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProgressSuccessImpl implements UpdateProgressSuccess {
  const _$UpdateProgressSuccessImpl(
      {required this.filePath, final String? $type})
      : $type = $type ?? 'success';

  factory _$UpdateProgressSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProgressSuccessImplFromJson(json);

  @override
  final String filePath;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UpdateProgress.success(filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProgressSuccessImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProgressSuccessImplCopyWith<_$UpdateProgressSuccessImpl>
      get copyWith => __$$UpdateProgressSuccessImplCopyWithImpl<
          _$UpdateProgressSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int received, int total) load,
    required TResult Function(String filePath) success,
    required TResult Function(String msg) error,
  }) {
    return success(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int received, int total)? load,
    TResult? Function(String filePath)? success,
    TResult? Function(String msg)? error,
  }) {
    return success?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int received, int total)? load,
    TResult Function(String filePath)? success,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProgressInit value) init,
    required TResult Function(UpdateProgressLoad value) load,
    required TResult Function(UpdateProgressSuccess value) success,
    required TResult Function(UpdateProgressError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProgressInit value)? init,
    TResult? Function(UpdateProgressLoad value)? load,
    TResult? Function(UpdateProgressSuccess value)? success,
    TResult? Function(UpdateProgressError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProgressInit value)? init,
    TResult Function(UpdateProgressLoad value)? load,
    TResult Function(UpdateProgressSuccess value)? success,
    TResult Function(UpdateProgressError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProgressSuccessImplToJson(
      this,
    );
  }
}

abstract class UpdateProgressSuccess implements UpdateProgress {
  const factory UpdateProgressSuccess({required final String filePath}) =
      _$UpdateProgressSuccessImpl;

  factory UpdateProgressSuccess.fromJson(Map<String, dynamic> json) =
      _$UpdateProgressSuccessImpl.fromJson;

  String get filePath;
  @JsonKey(ignore: true)
  _$$UpdateProgressSuccessImplCopyWith<_$UpdateProgressSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProgressErrorImplCopyWith<$Res> {
  factory _$$UpdateProgressErrorImplCopyWith(_$UpdateProgressErrorImpl value,
          $Res Function(_$UpdateProgressErrorImpl) then) =
      __$$UpdateProgressErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$UpdateProgressErrorImplCopyWithImpl<$Res>
    extends _$UpdateProgressCopyWithImpl<$Res, _$UpdateProgressErrorImpl>
    implements _$$UpdateProgressErrorImplCopyWith<$Res> {
  __$$UpdateProgressErrorImplCopyWithImpl(_$UpdateProgressErrorImpl _value,
      $Res Function(_$UpdateProgressErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$UpdateProgressErrorImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProgressErrorImpl implements UpdateProgressError {
  const _$UpdateProgressErrorImpl({required this.msg, final String? $type})
      : $type = $type ?? 'error';

  factory _$UpdateProgressErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProgressErrorImplFromJson(json);

  @override
  final String msg;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UpdateProgress.error(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProgressErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProgressErrorImplCopyWith<_$UpdateProgressErrorImpl> get copyWith =>
      __$$UpdateProgressErrorImplCopyWithImpl<_$UpdateProgressErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int received, int total) load,
    required TResult Function(String filePath) success,
    required TResult Function(String msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int received, int total)? load,
    TResult? Function(String filePath)? success,
    TResult? Function(String msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int received, int total)? load,
    TResult Function(String filePath)? success,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProgressInit value) init,
    required TResult Function(UpdateProgressLoad value) load,
    required TResult Function(UpdateProgressSuccess value) success,
    required TResult Function(UpdateProgressError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProgressInit value)? init,
    TResult? Function(UpdateProgressLoad value)? load,
    TResult? Function(UpdateProgressSuccess value)? success,
    TResult? Function(UpdateProgressError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProgressInit value)? init,
    TResult Function(UpdateProgressLoad value)? load,
    TResult Function(UpdateProgressSuccess value)? success,
    TResult Function(UpdateProgressError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProgressErrorImplToJson(
      this,
    );
  }
}

abstract class UpdateProgressError implements UpdateProgress {
  const factory UpdateProgressError({required final String msg}) =
      _$UpdateProgressErrorImpl;

  factory UpdateProgressError.fromJson(Map<String, dynamic> json) =
      _$UpdateProgressErrorImpl.fromJson;

  String get msg;
  @JsonKey(ignore: true)
  _$$UpdateProgressErrorImplCopyWith<_$UpdateProgressErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
