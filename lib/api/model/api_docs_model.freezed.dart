// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_docs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiDocsModel _$ApiDocsModelFromJson(Map<String, dynamic> json) {
  return _ApiDocsModel.fromJson(json);
}

/// @nodoc
mixin _$ApiDocsModel {
  String get agreementCreditReport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiDocsModelCopyWith<ApiDocsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDocsModelCopyWith<$Res> {
  factory $ApiDocsModelCopyWith(
          ApiDocsModel value, $Res Function(ApiDocsModel) then) =
      _$ApiDocsModelCopyWithImpl<$Res, ApiDocsModel>;
  @useResult
  $Res call({String agreementCreditReport});
}

/// @nodoc
class _$ApiDocsModelCopyWithImpl<$Res, $Val extends ApiDocsModel>
    implements $ApiDocsModelCopyWith<$Res> {
  _$ApiDocsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreementCreditReport = null,
  }) {
    return _then(_value.copyWith(
      agreementCreditReport: null == agreementCreditReport
          ? _value.agreementCreditReport
          : agreementCreditReport // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiDocsModelImplCopyWith<$Res>
    implements $ApiDocsModelCopyWith<$Res> {
  factory _$$ApiDocsModelImplCopyWith(
          _$ApiDocsModelImpl value, $Res Function(_$ApiDocsModelImpl) then) =
      __$$ApiDocsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String agreementCreditReport});
}

/// @nodoc
class __$$ApiDocsModelImplCopyWithImpl<$Res>
    extends _$ApiDocsModelCopyWithImpl<$Res, _$ApiDocsModelImpl>
    implements _$$ApiDocsModelImplCopyWith<$Res> {
  __$$ApiDocsModelImplCopyWithImpl(
      _$ApiDocsModelImpl _value, $Res Function(_$ApiDocsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreementCreditReport = null,
  }) {
    return _then(_$ApiDocsModelImpl(
      agreementCreditReport: null == agreementCreditReport
          ? _value.agreementCreditReport
          : agreementCreditReport // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiDocsModelImpl implements _ApiDocsModel {
  const _$ApiDocsModelImpl({this.agreementCreditReport = ''});

  factory _$ApiDocsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiDocsModelImplFromJson(json);

  @override
  @JsonKey()
  final String agreementCreditReport;

  @override
  String toString() {
    return 'ApiDocsModel(agreementCreditReport: $agreementCreditReport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiDocsModelImpl &&
            (identical(other.agreementCreditReport, agreementCreditReport) ||
                other.agreementCreditReport == agreementCreditReport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, agreementCreditReport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiDocsModelImplCopyWith<_$ApiDocsModelImpl> get copyWith =>
      __$$ApiDocsModelImplCopyWithImpl<_$ApiDocsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiDocsModelImplToJson(
      this,
    );
  }
}

abstract class _ApiDocsModel implements ApiDocsModel {
  const factory _ApiDocsModel({final String agreementCreditReport}) =
      _$ApiDocsModelImpl;

  factory _ApiDocsModel.fromJson(Map<String, dynamic> json) =
      _$ApiDocsModelImpl.fromJson;

  @override
  String get agreementCreditReport;
  @override
  @JsonKey(ignore: true)
  _$$ApiDocsModelImplCopyWith<_$ApiDocsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
