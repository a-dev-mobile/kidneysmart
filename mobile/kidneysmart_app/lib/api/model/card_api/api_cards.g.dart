// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiCardItemImpl _$$ApiCardItemImplFromJson(Map<String, dynamic> json) =>
    _$ApiCardItemImpl(
      id: json['id'] as int? ?? 0,
      cardNumber: json['cardNumber'] as String? ?? '',
      cardHolderName: json['cardHolderName'] as String? ?? '',
      expiry: json['expiry'] as String? ?? '',
      isVerified: json['isVerified'] as bool? ?? false,
      bankName: json['bankName'] as String? ?? '',
      current: json['current'] as bool? ?? false,
      verifiedBy: (json['verifiedBy'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      defaultFor: (json['defaultFor'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isAutoCharge: json['isAutoCharge'] as bool? ?? false,
      isPhotoExists: json['isPhotoExists'] as bool? ?? false,
      patchImage: json['patchImage'] as String? ?? '',
    );

Map<String, dynamic> _$$ApiCardItemImplToJson(_$ApiCardItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cardNumber': instance.cardNumber,
      'cardHolderName': instance.cardHolderName,
      'expiry': instance.expiry,
      'isVerified': instance.isVerified,
      'bankName': instance.bankName,
      'current': instance.current,
      'verifiedBy': instance.verifiedBy,
      'defaultFor': instance.defaultFor,
      'isAutoCharge': instance.isAutoCharge,
      'isPhotoExists': instance.isPhotoExists,
      'patchImage': instance.patchImage,
    };
