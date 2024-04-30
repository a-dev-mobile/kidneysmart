// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentData _$DocumentDataFromJson(Map<String, dynamic> json) {
  return _DocumentData.fromJson(json);
}

/// @nodoc
mixin _$DocumentData {
  String get title => throw _privateConstructorUsedError;
  String get prefix => throw _privateConstructorUsedError;
  String get suffix => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentDataCopyWith<DocumentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentDataCopyWith<$Res> {
  factory $DocumentDataCopyWith(
          DocumentData value, $Res Function(DocumentData) then) =
      _$DocumentDataCopyWithImpl<$Res, DocumentData>;
  @useResult
  $Res call(
      {String title,
      String prefix,
      String suffix,
      String? url,
      String? number,
      String? date});
}

/// @nodoc
class _$DocumentDataCopyWithImpl<$Res, $Val extends DocumentData>
    implements $DocumentDataCopyWith<$Res> {
  _$DocumentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? prefix = null,
    Object? suffix = null,
    Object? url = freezed,
    Object? number = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      suffix: null == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentDataImplCopyWith<$Res>
    implements $DocumentDataCopyWith<$Res> {
  factory _$$DocumentDataImplCopyWith(
          _$DocumentDataImpl value, $Res Function(_$DocumentDataImpl) then) =
      __$$DocumentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String prefix,
      String suffix,
      String? url,
      String? number,
      String? date});
}

/// @nodoc
class __$$DocumentDataImplCopyWithImpl<$Res>
    extends _$DocumentDataCopyWithImpl<$Res, _$DocumentDataImpl>
    implements _$$DocumentDataImplCopyWith<$Res> {
  __$$DocumentDataImplCopyWithImpl(
      _$DocumentDataImpl _value, $Res Function(_$DocumentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? prefix = null,
    Object? suffix = null,
    Object? url = freezed,
    Object? number = freezed,
    Object? date = freezed,
  }) {
    return _then(_$DocumentDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      suffix: null == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentDataImpl extends _DocumentData {
  const _$DocumentDataImpl(
      {required this.title,
      this.prefix = '',
      this.suffix = '',
      this.url,
      this.number,
      this.date})
      : super._();

  factory _$DocumentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentDataImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey()
  final String prefix;
  @override
  @JsonKey()
  final String suffix;
  @override
  final String? url;
  @override
  final String? number;
  @override
  final String? date;

  @override
  String toString() {
    return 'DocumentData(title: $title, prefix: $prefix, suffix: $suffix, url: $url, number: $number, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, prefix, suffix, url, number, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentDataImplCopyWith<_$DocumentDataImpl> get copyWith =>
      __$$DocumentDataImplCopyWithImpl<_$DocumentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentDataImplToJson(
      this,
    );
  }
}

abstract class _DocumentData extends DocumentData {
  const factory _DocumentData(
      {required final String title,
      final String prefix,
      final String suffix,
      final String? url,
      final String? number,
      final String? date}) = _$DocumentDataImpl;
  const _DocumentData._() : super._();

  factory _DocumentData.fromJson(Map<String, dynamic> json) =
      _$DocumentDataImpl.fromJson;

  @override
  String get title;
  @override
  String get prefix;
  @override
  String get suffix;
  @override
  String? get url;
  @override
  String? get number;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$DocumentDataImplCopyWith<_$DocumentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
