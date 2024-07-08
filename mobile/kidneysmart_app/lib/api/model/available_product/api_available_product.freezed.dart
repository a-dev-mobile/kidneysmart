// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_available_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiAvailableProductList _$ApiAvailableProductListFromJson(
    Map<String, dynamic> json) {
  return _ApiAvailableProduct.fromJson(json);
}

/// @nodoc
mixin _$ApiAvailableProductList {
  List<ApiAvailableProductItem> get apiAvailableProductList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiAvailableProductListCopyWith<ApiAvailableProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAvailableProductListCopyWith<$Res> {
  factory $ApiAvailableProductListCopyWith(ApiAvailableProductList value,
          $Res Function(ApiAvailableProductList) then) =
      _$ApiAvailableProductListCopyWithImpl<$Res, ApiAvailableProductList>;
  @useResult
  $Res call({List<ApiAvailableProductItem> apiAvailableProductList});
}

/// @nodoc
class _$ApiAvailableProductListCopyWithImpl<$Res,
        $Val extends ApiAvailableProductList>
    implements $ApiAvailableProductListCopyWith<$Res> {
  _$ApiAvailableProductListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiAvailableProductList = null,
  }) {
    return _then(_value.copyWith(
      apiAvailableProductList: null == apiAvailableProductList
          ? _value.apiAvailableProductList
          : apiAvailableProductList // ignore: cast_nullable_to_non_nullable
              as List<ApiAvailableProductItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiAvailableProductImplCopyWith<$Res>
    implements $ApiAvailableProductListCopyWith<$Res> {
  factory _$$ApiAvailableProductImplCopyWith(_$ApiAvailableProductImpl value,
          $Res Function(_$ApiAvailableProductImpl) then) =
      __$$ApiAvailableProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ApiAvailableProductItem> apiAvailableProductList});
}

/// @nodoc
class __$$ApiAvailableProductImplCopyWithImpl<$Res>
    extends _$ApiAvailableProductListCopyWithImpl<$Res,
        _$ApiAvailableProductImpl>
    implements _$$ApiAvailableProductImplCopyWith<$Res> {
  __$$ApiAvailableProductImplCopyWithImpl(_$ApiAvailableProductImpl _value,
      $Res Function(_$ApiAvailableProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiAvailableProductList = null,
  }) {
    return _then(_$ApiAvailableProductImpl(
      apiAvailableProductList: null == apiAvailableProductList
          ? _value._apiAvailableProductList
          : apiAvailableProductList // ignore: cast_nullable_to_non_nullable
              as List<ApiAvailableProductItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiAvailableProductImpl implements _ApiAvailableProduct {
  const _$ApiAvailableProductImpl(
      {required final List<ApiAvailableProductItem> apiAvailableProductList})
      : _apiAvailableProductList = apiAvailableProductList;

  factory _$ApiAvailableProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiAvailableProductImplFromJson(json);

  final List<ApiAvailableProductItem> _apiAvailableProductList;
  @override
  List<ApiAvailableProductItem> get apiAvailableProductList {
    if (_apiAvailableProductList is EqualUnmodifiableListView)
      return _apiAvailableProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apiAvailableProductList);
  }

  @override
  String toString() {
    return 'ApiAvailableProductList(apiAvailableProductList: $apiAvailableProductList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiAvailableProductImpl &&
            const DeepCollectionEquality().equals(
                other._apiAvailableProductList, _apiAvailableProductList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_apiAvailableProductList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiAvailableProductImplCopyWith<_$ApiAvailableProductImpl> get copyWith =>
      __$$ApiAvailableProductImplCopyWithImpl<_$ApiAvailableProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiAvailableProductImplToJson(
      this,
    );
  }
}

abstract class _ApiAvailableProduct implements ApiAvailableProductList {
  const factory _ApiAvailableProduct(
      {required final List<ApiAvailableProductItem>
          apiAvailableProductList}) = _$ApiAvailableProductImpl;

  factory _ApiAvailableProduct.fromJson(Map<String, dynamic> json) =
      _$ApiAvailableProductImpl.fromJson;

  @override
  List<ApiAvailableProductItem> get apiAvailableProductList;
  @override
  @JsonKey(ignore: true)
  _$$ApiAvailableProductImplCopyWith<_$ApiAvailableProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiAvailableProductItem _$ApiAvailableProductItemFromJson(
    Map<String, dynamic> json) {
  return _ApiAvailableProductItem.fromJson(json);
}

/// @nodoc
mixin _$ApiAvailableProductItem {
  @JsonKey(
      name: 'id',
      toJson: availableProductIdToJson,
      fromJson: availableProductIdFromJson)
  EnumAvailableProduct? get enumAvailableProduct =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiAvailableProductItemCopyWith<ApiAvailableProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAvailableProductItemCopyWith<$Res> {
  factory $ApiAvailableProductItemCopyWith(ApiAvailableProductItem value,
          $Res Function(ApiAvailableProductItem) then) =
      _$ApiAvailableProductItemCopyWithImpl<$Res, ApiAvailableProductItem>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'id',
          toJson: availableProductIdToJson,
          fromJson: availableProductIdFromJson)
      EnumAvailableProduct? enumAvailableProduct,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class _$ApiAvailableProductItemCopyWithImpl<$Res,
        $Val extends ApiAvailableProductItem>
    implements $ApiAvailableProductItemCopyWith<$Res> {
  _$ApiAvailableProductItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumAvailableProduct = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      enumAvailableProduct: freezed == enumAvailableProduct
          ? _value.enumAvailableProduct
          : enumAvailableProduct // ignore: cast_nullable_to_non_nullable
              as EnumAvailableProduct?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiAvailableProductItemImplCopyWith<$Res>
    implements $ApiAvailableProductItemCopyWith<$Res> {
  factory _$$ApiAvailableProductItemImplCopyWith(
          _$ApiAvailableProductItemImpl value,
          $Res Function(_$ApiAvailableProductItemImpl) then) =
      __$$ApiAvailableProductItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'id',
          toJson: availableProductIdToJson,
          fromJson: availableProductIdFromJson)
      EnumAvailableProduct? enumAvailableProduct,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class __$$ApiAvailableProductItemImplCopyWithImpl<$Res>
    extends _$ApiAvailableProductItemCopyWithImpl<$Res,
        _$ApiAvailableProductItemImpl>
    implements _$$ApiAvailableProductItemImplCopyWith<$Res> {
  __$$ApiAvailableProductItemImplCopyWithImpl(
      _$ApiAvailableProductItemImpl _value,
      $Res Function(_$ApiAvailableProductItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumAvailableProduct = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ApiAvailableProductItemImpl(
      enumAvailableProduct: freezed == enumAvailableProduct
          ? _value.enumAvailableProduct
          : enumAvailableProduct // ignore: cast_nullable_to_non_nullable
              as EnumAvailableProduct?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiAvailableProductItemImpl implements _ApiAvailableProductItem {
  const _$ApiAvailableProductItemImpl(
      {@JsonKey(
          name: 'id',
          toJson: availableProductIdToJson,
          fromJson: availableProductIdFromJson)
      this.enumAvailableProduct,
      @JsonKey(name: 'type') this.type});

  factory _$ApiAvailableProductItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiAvailableProductItemImplFromJson(json);

  @override
  @JsonKey(
      name: 'id',
      toJson: availableProductIdToJson,
      fromJson: availableProductIdFromJson)
  final EnumAvailableProduct? enumAvailableProduct;
  @override
  @JsonKey(name: 'type')
  final String? type;

  @override
  String toString() {
    return 'ApiAvailableProductItem(enumAvailableProduct: $enumAvailableProduct, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiAvailableProductItemImpl &&
            (identical(other.enumAvailableProduct, enumAvailableProduct) ||
                other.enumAvailableProduct == enumAvailableProduct) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enumAvailableProduct, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiAvailableProductItemImplCopyWith<_$ApiAvailableProductItemImpl>
      get copyWith => __$$ApiAvailableProductItemImplCopyWithImpl<
          _$ApiAvailableProductItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiAvailableProductItemImplToJson(
      this,
    );
  }
}

abstract class _ApiAvailableProductItem implements ApiAvailableProductItem {
  const factory _ApiAvailableProductItem(
          {@JsonKey(
              name: 'id',
              toJson: availableProductIdToJson,
              fromJson: availableProductIdFromJson)
          final EnumAvailableProduct? enumAvailableProduct,
          @JsonKey(name: 'type') final String? type}) =
      _$ApiAvailableProductItemImpl;

  factory _ApiAvailableProductItem.fromJson(Map<String, dynamic> json) =
      _$ApiAvailableProductItemImpl.fromJson;

  @override
  @JsonKey(
      name: 'id',
      toJson: availableProductIdToJson,
      fromJson: availableProductIdFromJson)
  EnumAvailableProduct? get enumAvailableProduct;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$ApiAvailableProductItemImplCopyWith<_$ApiAvailableProductItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
