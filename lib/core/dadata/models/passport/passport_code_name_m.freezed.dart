// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_code_name_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PassportCodeName _$PassportCodeNameFromJson(Map<String, dynamic> json) {
  return _PassportCodeName.fromJson(json);
}

/// @nodoc
mixin _$PassportCodeName {
  List<PassportCodeNameSuggestions> get suggestions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportCodeNameCopyWith<PassportCodeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportCodeNameCopyWith<$Res> {
  factory $PassportCodeNameCopyWith(
          PassportCodeName value, $Res Function(PassportCodeName) then) =
      _$PassportCodeNameCopyWithImpl<$Res, PassportCodeName>;
  @useResult
  $Res call({List<PassportCodeNameSuggestions> suggestions});
}

/// @nodoc
class _$PassportCodeNameCopyWithImpl<$Res, $Val extends PassportCodeName>
    implements $PassportCodeNameCopyWith<$Res> {
  _$PassportCodeNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<PassportCodeNameSuggestions>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassportCodeNameImplCopyWith<$Res>
    implements $PassportCodeNameCopyWith<$Res> {
  factory _$$PassportCodeNameImplCopyWith(_$PassportCodeNameImpl value,
          $Res Function(_$PassportCodeNameImpl) then) =
      __$$PassportCodeNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PassportCodeNameSuggestions> suggestions});
}

/// @nodoc
class __$$PassportCodeNameImplCopyWithImpl<$Res>
    extends _$PassportCodeNameCopyWithImpl<$Res, _$PassportCodeNameImpl>
    implements _$$PassportCodeNameImplCopyWith<$Res> {
  __$$PassportCodeNameImplCopyWithImpl(_$PassportCodeNameImpl _value,
      $Res Function(_$PassportCodeNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_$PassportCodeNameImpl(
      null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<PassportCodeNameSuggestions>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportCodeNameImpl implements _PassportCodeName {
  const _$PassportCodeNameImpl(
      final List<PassportCodeNameSuggestions> suggestions)
      : _suggestions = suggestions;

  factory _$PassportCodeNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassportCodeNameImplFromJson(json);

  final List<PassportCodeNameSuggestions> _suggestions;
  @override
  List<PassportCodeNameSuggestions> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'PassportCodeName(suggestions: $suggestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassportCodeNameImpl &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportCodeNameImplCopyWith<_$PassportCodeNameImpl> get copyWith =>
      __$$PassportCodeNameImplCopyWithImpl<_$PassportCodeNameImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportCodeNameImplToJson(
      this,
    );
  }
}

abstract class _PassportCodeName implements PassportCodeName {
  const factory _PassportCodeName(
          final List<PassportCodeNameSuggestions> suggestions) =
      _$PassportCodeNameImpl;

  factory _PassportCodeName.fromJson(Map<String, dynamic> json) =
      _$PassportCodeNameImpl.fromJson;

  @override
  List<PassportCodeNameSuggestions> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$PassportCodeNameImplCopyWith<_$PassportCodeNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PassportCodeNameSuggestions _$PassportCodeNameSuggestionsFromJson(
    Map<String, dynamic> json) {
  return _PassportCodeNameSuggestions.fromJson(json);
}

/// @nodoc
mixin _$PassportCodeNameSuggestions {
  String get value => throw _privateConstructorUsedError;
  String get unrestricted_value => throw _privateConstructorUsedError;
  PassportCodeNameData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportCodeNameSuggestionsCopyWith<PassportCodeNameSuggestions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportCodeNameSuggestionsCopyWith<$Res> {
  factory $PassportCodeNameSuggestionsCopyWith(
          PassportCodeNameSuggestions value,
          $Res Function(PassportCodeNameSuggestions) then) =
      _$PassportCodeNameSuggestionsCopyWithImpl<$Res,
          PassportCodeNameSuggestions>;
  @useResult
  $Res call(
      {String value, String unrestricted_value, PassportCodeNameData data});

  $PassportCodeNameDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PassportCodeNameSuggestionsCopyWithImpl<$Res,
        $Val extends PassportCodeNameSuggestions>
    implements $PassportCodeNameSuggestionsCopyWith<$Res> {
  _$PassportCodeNameSuggestionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unrestricted_value = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unrestricted_value: null == unrestricted_value
          ? _value.unrestricted_value
          : unrestricted_value // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PassportCodeNameData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PassportCodeNameDataCopyWith<$Res> get data {
    return $PassportCodeNameDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PassportCodeNameSuggestionsImplCopyWith<$Res>
    implements $PassportCodeNameSuggestionsCopyWith<$Res> {
  factory _$$PassportCodeNameSuggestionsImplCopyWith(
          _$PassportCodeNameSuggestionsImpl value,
          $Res Function(_$PassportCodeNameSuggestionsImpl) then) =
      __$$PassportCodeNameSuggestionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value, String unrestricted_value, PassportCodeNameData data});

  @override
  $PassportCodeNameDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PassportCodeNameSuggestionsImplCopyWithImpl<$Res>
    extends _$PassportCodeNameSuggestionsCopyWithImpl<$Res,
        _$PassportCodeNameSuggestionsImpl>
    implements _$$PassportCodeNameSuggestionsImplCopyWith<$Res> {
  __$$PassportCodeNameSuggestionsImplCopyWithImpl(
      _$PassportCodeNameSuggestionsImpl _value,
      $Res Function(_$PassportCodeNameSuggestionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unrestricted_value = null,
    Object? data = null,
  }) {
    return _then(_$PassportCodeNameSuggestionsImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unrestricted_value: null == unrestricted_value
          ? _value.unrestricted_value
          : unrestricted_value // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PassportCodeNameData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportCodeNameSuggestionsImpl
    implements _PassportCodeNameSuggestions {
  const _$PassportCodeNameSuggestionsImpl(
      {this.value = '',
      this.unrestricted_value = '',
      this.data = const PassportCodeNameData()});

  factory _$PassportCodeNameSuggestionsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PassportCodeNameSuggestionsImplFromJson(json);

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String unrestricted_value;
  @override
  @JsonKey()
  final PassportCodeNameData data;

  @override
  String toString() {
    return 'PassportCodeNameSuggestions(value: $value, unrestricted_value: $unrestricted_value, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassportCodeNameSuggestionsImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unrestricted_value, unrestricted_value) ||
                other.unrestricted_value == unrestricted_value) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, unrestricted_value, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportCodeNameSuggestionsImplCopyWith<_$PassportCodeNameSuggestionsImpl>
      get copyWith => __$$PassportCodeNameSuggestionsImplCopyWithImpl<
          _$PassportCodeNameSuggestionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportCodeNameSuggestionsImplToJson(
      this,
    );
  }
}

abstract class _PassportCodeNameSuggestions
    implements PassportCodeNameSuggestions {
  const factory _PassportCodeNameSuggestions(
      {final String value,
      final String unrestricted_value,
      final PassportCodeNameData data}) = _$PassportCodeNameSuggestionsImpl;

  factory _PassportCodeNameSuggestions.fromJson(Map<String, dynamic> json) =
      _$PassportCodeNameSuggestionsImpl.fromJson;

  @override
  String get value;
  @override
  String get unrestricted_value;
  @override
  PassportCodeNameData get data;
  @override
  @JsonKey(ignore: true)
  _$$PassportCodeNameSuggestionsImplCopyWith<_$PassportCodeNameSuggestionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PassportCodeNameData _$PassportCodeNameDataFromJson(Map<String, dynamic> json) {
  return _PassportCodeNameData.fromJson(json);
}

/// @nodoc
mixin _$PassportCodeNameData {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get region_code => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportCodeNameDataCopyWith<PassportCodeNameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportCodeNameDataCopyWith<$Res> {
  factory $PassportCodeNameDataCopyWith(PassportCodeNameData value,
          $Res Function(PassportCodeNameData) then) =
      _$PassportCodeNameDataCopyWithImpl<$Res, PassportCodeNameData>;
  @useResult
  $Res call({String code, String name, String region_code, String type});
}

/// @nodoc
class _$PassportCodeNameDataCopyWithImpl<$Res,
        $Val extends PassportCodeNameData>
    implements $PassportCodeNameDataCopyWith<$Res> {
  _$PassportCodeNameDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? region_code = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region_code: null == region_code
          ? _value.region_code
          : region_code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassportCodeNameDataImplCopyWith<$Res>
    implements $PassportCodeNameDataCopyWith<$Res> {
  factory _$$PassportCodeNameDataImplCopyWith(_$PassportCodeNameDataImpl value,
          $Res Function(_$PassportCodeNameDataImpl) then) =
      __$$PassportCodeNameDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, String region_code, String type});
}

/// @nodoc
class __$$PassportCodeNameDataImplCopyWithImpl<$Res>
    extends _$PassportCodeNameDataCopyWithImpl<$Res, _$PassportCodeNameDataImpl>
    implements _$$PassportCodeNameDataImplCopyWith<$Res> {
  __$$PassportCodeNameDataImplCopyWithImpl(_$PassportCodeNameDataImpl _value,
      $Res Function(_$PassportCodeNameDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? region_code = null,
    Object? type = null,
  }) {
    return _then(_$PassportCodeNameDataImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region_code: null == region_code
          ? _value.region_code
          : region_code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportCodeNameDataImpl implements _PassportCodeNameData {
  const _$PassportCodeNameDataImpl(
      {this.code = '', this.name = '', this.region_code = '', this.type = ''});

  factory _$PassportCodeNameDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassportCodeNameDataImplFromJson(json);

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String region_code;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'PassportCodeNameData(code: $code, name: $name, region_code: $region_code, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassportCodeNameDataImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region_code, region_code) ||
                other.region_code == region_code) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, region_code, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportCodeNameDataImplCopyWith<_$PassportCodeNameDataImpl>
      get copyWith =>
          __$$PassportCodeNameDataImplCopyWithImpl<_$PassportCodeNameDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportCodeNameDataImplToJson(
      this,
    );
  }
}

abstract class _PassportCodeNameData implements PassportCodeNameData {
  const factory _PassportCodeNameData(
      {final String code,
      final String name,
      final String region_code,
      final String type}) = _$PassportCodeNameDataImpl;

  factory _PassportCodeNameData.fromJson(Map<String, dynamic> json) =
      _$PassportCodeNameDataImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  String get region_code;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$PassportCodeNameDataImplCopyWith<_$PassportCodeNameDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
