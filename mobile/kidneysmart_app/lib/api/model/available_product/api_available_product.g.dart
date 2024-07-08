// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_available_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiAvailableProductImpl _$$ApiAvailableProductImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiAvailableProductImpl(
      apiAvailableProductList:
          (json['apiAvailableProductList'] as List<dynamic>)
              .map((e) =>
                  ApiAvailableProductItem.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ApiAvailableProductImplToJson(
        _$ApiAvailableProductImpl instance) =>
    <String, dynamic>{
      'apiAvailableProductList': instance.apiAvailableProductList,
    };

_$ApiAvailableProductItemImpl _$$ApiAvailableProductItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiAvailableProductItemImpl(
      enumAvailableProduct: availableProductIdFromJson(json['id'] as int?),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$ApiAvailableProductItemImplToJson(
        _$ApiAvailableProductItemImpl instance) =>
    <String, dynamic>{
      'id': availableProductIdToJson(instance.enumAvailableProduct),
      'type': instance.type,
    };
