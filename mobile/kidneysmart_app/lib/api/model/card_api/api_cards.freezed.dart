// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_cards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiCardItem _$ApiCardItemFromJson(Map<String, dynamic> json) {
  return _ApiCardItem.fromJson(json);
}

/// @nodoc
mixin _$ApiCardItem {
  int get id => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  String get cardHolderName => throw _privateConstructorUsedError;
  String get expiry => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  bool get current => throw _privateConstructorUsedError;
  List<String> get verifiedBy => throw _privateConstructorUsedError;
  List<String> get defaultFor => throw _privateConstructorUsedError;
  bool get isAutoCharge => throw _privateConstructorUsedError;
  bool get isPhotoExists =>
      throw _privateConstructorUsedError; // added for ui so as not to produce more models
  String get patchImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiCardItemCopyWith<ApiCardItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCardItemCopyWith<$Res> {
  factory $ApiCardItemCopyWith(
          ApiCardItem value, $Res Function(ApiCardItem) then) =
      _$ApiCardItemCopyWithImpl<$Res, ApiCardItem>;
  @useResult
  $Res call(
      {int id,
      String cardNumber,
      String cardHolderName,
      String expiry,
      bool isVerified,
      String bankName,
      bool current,
      List<String> verifiedBy,
      List<String> defaultFor,
      bool isAutoCharge,
      bool isPhotoExists,
      String patchImage});
}

/// @nodoc
class _$ApiCardItemCopyWithImpl<$Res, $Val extends ApiCardItem>
    implements $ApiCardItemCopyWith<$Res> {
  _$ApiCardItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardNumber = null,
    Object? cardHolderName = null,
    Object? expiry = null,
    Object? isVerified = null,
    Object? bankName = null,
    Object? current = null,
    Object? verifiedBy = null,
    Object? defaultFor = null,
    Object? isAutoCharge = null,
    Object? isPhotoExists = null,
    Object? patchImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool,
      verifiedBy: null == verifiedBy
          ? _value.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultFor: null == defaultFor
          ? _value.defaultFor
          : defaultFor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAutoCharge: null == isAutoCharge
          ? _value.isAutoCharge
          : isAutoCharge // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhotoExists: null == isPhotoExists
          ? _value.isPhotoExists
          : isPhotoExists // ignore: cast_nullable_to_non_nullable
              as bool,
      patchImage: null == patchImage
          ? _value.patchImage
          : patchImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiCardItemImplCopyWith<$Res>
    implements $ApiCardItemCopyWith<$Res> {
  factory _$$ApiCardItemImplCopyWith(
          _$ApiCardItemImpl value, $Res Function(_$ApiCardItemImpl) then) =
      __$$ApiCardItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String cardNumber,
      String cardHolderName,
      String expiry,
      bool isVerified,
      String bankName,
      bool current,
      List<String> verifiedBy,
      List<String> defaultFor,
      bool isAutoCharge,
      bool isPhotoExists,
      String patchImage});
}

/// @nodoc
class __$$ApiCardItemImplCopyWithImpl<$Res>
    extends _$ApiCardItemCopyWithImpl<$Res, _$ApiCardItemImpl>
    implements _$$ApiCardItemImplCopyWith<$Res> {
  __$$ApiCardItemImplCopyWithImpl(
      _$ApiCardItemImpl _value, $Res Function(_$ApiCardItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardNumber = null,
    Object? cardHolderName = null,
    Object? expiry = null,
    Object? isVerified = null,
    Object? bankName = null,
    Object? current = null,
    Object? verifiedBy = null,
    Object? defaultFor = null,
    Object? isAutoCharge = null,
    Object? isPhotoExists = null,
    Object? patchImage = null,
  }) {
    return _then(_$ApiCardItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool,
      verifiedBy: null == verifiedBy
          ? _value._verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultFor: null == defaultFor
          ? _value._defaultFor
          : defaultFor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAutoCharge: null == isAutoCharge
          ? _value.isAutoCharge
          : isAutoCharge // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhotoExists: null == isPhotoExists
          ? _value.isPhotoExists
          : isPhotoExists // ignore: cast_nullable_to_non_nullable
              as bool,
      patchImage: null == patchImage
          ? _value.patchImage
          : patchImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCardItemImpl extends _ApiCardItem {
  const _$ApiCardItemImpl(
      {this.id = 0,
      this.cardNumber = '',
      this.cardHolderName = '',
      this.expiry = '',
      this.isVerified = false,
      this.bankName = '',
      this.current = false,
      final List<String> verifiedBy = const [],
      final List<String> defaultFor = const [],
      this.isAutoCharge = false,
      this.isPhotoExists = false,
      this.patchImage = ''})
      : _verifiedBy = verifiedBy,
        _defaultFor = defaultFor,
        super._();

  factory _$ApiCardItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiCardItemImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String cardNumber;
  @override
  @JsonKey()
  final String cardHolderName;
  @override
  @JsonKey()
  final String expiry;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  @JsonKey()
  final String bankName;
  @override
  @JsonKey()
  final bool current;
  final List<String> _verifiedBy;
  @override
  @JsonKey()
  List<String> get verifiedBy {
    if (_verifiedBy is EqualUnmodifiableListView) return _verifiedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verifiedBy);
  }

  final List<String> _defaultFor;
  @override
  @JsonKey()
  List<String> get defaultFor {
    if (_defaultFor is EqualUnmodifiableListView) return _defaultFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultFor);
  }

  @override
  @JsonKey()
  final bool isAutoCharge;
  @override
  @JsonKey()
  final bool isPhotoExists;
// added for ui so as not to produce more models
  @override
  @JsonKey()
  final String patchImage;

  @override
  String toString() {
    return 'ApiCardItem(id: $id, cardNumber: $cardNumber, cardHolderName: $cardHolderName, expiry: $expiry, isVerified: $isVerified, bankName: $bankName, current: $current, verifiedBy: $verifiedBy, defaultFor: $defaultFor, isAutoCharge: $isAutoCharge, isPhotoExists: $isPhotoExists, patchImage: $patchImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCardItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.expiry, expiry) || other.expiry == expiry) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality()
                .equals(other._verifiedBy, _verifiedBy) &&
            const DeepCollectionEquality()
                .equals(other._defaultFor, _defaultFor) &&
            (identical(other.isAutoCharge, isAutoCharge) ||
                other.isAutoCharge == isAutoCharge) &&
            (identical(other.isPhotoExists, isPhotoExists) ||
                other.isPhotoExists == isPhotoExists) &&
            (identical(other.patchImage, patchImage) ||
                other.patchImage == patchImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cardNumber,
      cardHolderName,
      expiry,
      isVerified,
      bankName,
      current,
      const DeepCollectionEquality().hash(_verifiedBy),
      const DeepCollectionEquality().hash(_defaultFor),
      isAutoCharge,
      isPhotoExists,
      patchImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCardItemImplCopyWith<_$ApiCardItemImpl> get copyWith =>
      __$$ApiCardItemImplCopyWithImpl<_$ApiCardItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCardItemImplToJson(
      this,
    );
  }
}

abstract class _ApiCardItem extends ApiCardItem {
  const factory _ApiCardItem(
      {final int id,
      final String cardNumber,
      final String cardHolderName,
      final String expiry,
      final bool isVerified,
      final String bankName,
      final bool current,
      final List<String> verifiedBy,
      final List<String> defaultFor,
      final bool isAutoCharge,
      final bool isPhotoExists,
      final String patchImage}) = _$ApiCardItemImpl;
  const _ApiCardItem._() : super._();

  factory _ApiCardItem.fromJson(Map<String, dynamic> json) =
      _$ApiCardItemImpl.fromJson;

  @override
  int get id;
  @override
  String get cardNumber;
  @override
  String get cardHolderName;
  @override
  String get expiry;
  @override
  bool get isVerified;
  @override
  String get bankName;
  @override
  bool get current;
  @override
  List<String> get verifiedBy;
  @override
  List<String> get defaultFor;
  @override
  bool get isAutoCharge;
  @override
  bool get isPhotoExists;
  @override // added for ui so as not to produce more models
  String get patchImage;
  @override
  @JsonKey(ignore: true)
  _$$ApiCardItemImplCopyWith<_$ApiCardItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
