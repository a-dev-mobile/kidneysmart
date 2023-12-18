// ignore_for_file: avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
// ignore_for_file: sort_constructors_first

import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class DataAddress {
  final String? postal_code;
  final String? country;
  final String? country_iso_code;
  final String? federal_district;
  final String? region_fias_id;
  final String? region_kladr_id;
  final String? region_iso_code;
  final String? region_with_type;
  final String? region_type;
  final String? region_type_full;
  final String? region;
  final String? area_fias_id;
  final String? area_kladr_id;
  final String? area_with_type;
  final String? area_type;
  final String? area_type_full;
  final String? area;
  final String? city_fias_id;
  final String? city_kladr_id;
  final String? city_with_type;
  final String? city_type;
  final String? city_type_full;
  final String? city;
  final String? city_area;
  final String? city_district_fias_id;
  final String? city_district_kladr_id;
  final String? city_district_with_type;
  final String? city_district_type;
  final String? city_district_type_full;
  final String? city_district;
  final String? settlement_fias_id;
  final String? settlement_kladr_id;
  final String? settlement_with_type;
  final String? settlement_type;
  final String? settlement_type_full;
  final String? settlement;
  final String? street_fias_id;
  final String? street_kladr_id;
  final String? street_with_type;
  final String? street_type;
  final String? street_type_full;
  final String? street;
  final String? stead_fias_id;
  final String? stead_cadnum;
  final String? stead_type;
  final String? stead_type_full;
  final String? stead;
  final String? house_fias_id;
  final String? house_kladr_id;
  final String? house_cadnum;
  final String? house_type;
  final String? house_type_full;
  final String? house;
  final String? block_type;
  final String? block_type_full;
  final String? block;
  final String? entrance;
  final String? floor;
  final String? flat_fias_id;
  final String? flat_cadnum;
  final String? flat_type;
  final String? flat_type_full;
  final String? flat;
  final String? flat_area;
  final String? fias_id;
  final String? okato;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DataAddress({
    this.postal_code,
    this.country,
    this.country_iso_code,
    this.federal_district,
    this.region_fias_id,
    this.region_kladr_id,
    this.region_iso_code,
    this.region_with_type,
    this.region_type,
    this.region_type_full,
    this.region,
    this.area_fias_id,
    this.area_kladr_id,
    this.area_with_type,
    this.area_type,
    this.area_type_full,
    this.area,
    this.city_fias_id,
    this.city_kladr_id,
    this.city_with_type,
    this.city_type,
    this.city_type_full,
    this.city,
    this.city_area,
    this.city_district_fias_id,
    this.city_district_kladr_id,
    this.city_district_with_type,
    this.city_district_type,
    this.city_district_type_full,
    this.city_district,
    this.settlement_fias_id,
    this.settlement_kladr_id,
    this.settlement_with_type,
    this.settlement_type,
    this.settlement_type_full,
    this.settlement,
    this.street_fias_id,
    this.street_kladr_id,
    this.street_with_type,
    this.street_type,
    this.street_type_full,
    this.street,
    this.stead_fias_id,
    this.stead_cadnum,
    this.stead_type,
    this.stead_type_full,
    this.stead,
    this.house_fias_id,
    this.house_kladr_id,
    this.house_cadnum,
    this.house_type,
    this.house_type_full,
    this.house,
    this.block_type,
    this.block_type_full,
    this.block,
    this.entrance,
    this.floor,
    this.flat_fias_id,
    this.flat_cadnum,
    this.flat_type,
    this.flat_type_full,
    this.flat,
    this.flat_area,
    this.fias_id,
    this.okato,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postal_code': postal_code,
      'country': country,
      'country_iso_code': country_iso_code,
      'federal_district': federal_district,
      'region_fias_id': region_fias_id,
      'region_kladr_id': region_kladr_id,
      'region_iso_code': region_iso_code,
      'region_with_type': region_with_type,
      'region_type': region_type,
      'region_type_full': region_type_full,
      'region': region,
      'area_fias_id': area_fias_id,
      'area_kladr_id': area_kladr_id,
      'area_with_type': area_with_type,
      'area_type': area_type,
      'area_type_full': area_type_full,
      'area': area,
      'city_fias_id': city_fias_id,
      'city_kladr_id': city_kladr_id,
      'city_with_type': city_with_type,
      'city_type': city_type,
      'city_type_full': city_type_full,
      'city': city,
      'city_area': city_area,
      'city_district_fias_id': city_district_fias_id,
      'city_district_kladr_id': city_district_kladr_id,
      'city_district_with_type': city_district_with_type,
      'city_district_type': city_district_type,
      'city_district_type_full': city_district_type_full,
      'city_district': city_district,
      'settlement_fias_id': settlement_fias_id,
      'settlement_kladr_id': settlement_kladr_id,
      'settlement_with_type': settlement_with_type,
      'settlement_type': settlement_type,
      'settlement_type_full': settlement_type_full,
      'settlement': settlement,
      'street_fias_id': street_fias_id,
      'street_kladr_id': street_kladr_id,
      'street_with_type': street_with_type,
      'street_type': street_type,
      'street_type_full': street_type_full,
      'street': street,
      'stead_fias_id': stead_fias_id,
      'stead_cadnum': stead_cadnum,
      'stead_type': stead_type,
      'stead_type_full': stead_type_full,
      'stead': stead,
      'house_fias_id': house_fias_id,
      'house_kladr_id': house_kladr_id,
      'house_cadnum': house_cadnum,
      'house_type': house_type,
      'house_type_full': house_type_full,
      'house': house,
      'block_type': block_type,
      'block_type_full': block_type_full,
      'block': block,
      'entrance': entrance,
      'floor': floor,
      'flat_fias_id': flat_fias_id,
      'flat_cadnum': flat_cadnum,
      'flat_type': flat_type,
      'flat_type_full': flat_type_full,
      'flat': flat,
      'flat_area': flat_area,
      'fias_id': fias_id,
      'okato': okato,
    };
  }

  factory DataAddress.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DataAddress();

    return DataAddress(
      postal_code: map['postal_code'] as String?,
      country: map['country'] as String?,
      country_iso_code: map['country_iso_code'] as String?,
      federal_district: map['federal_district'] as String?,
      region_fias_id: map['region_fias_id'] as String?,
      region_kladr_id: map['region_kladr_id'] as String?,
      region_iso_code: map['region_iso_code'] as String?,
      region_with_type: map['region_with_type'] as String?,
      region_type: map['region_type'] as String?,
      region_type_full: map['region_type_full'] as String?,
      region: map['region'] as String?,
      area_fias_id: map['area_fias_id'] as String?,
      area_kladr_id: map['area_kladr_id'] as String?,
      area_with_type: map['area_with_type'] as String?,
      area_type: map['area_type'] as String?,
      area_type_full: map['area_type_full'] as String?,
      area: map['area'] as String?,
      city_fias_id: map['city_fias_id'] as String?,
      city_kladr_id: map['city_kladr_id'] as String?,
      city_with_type: map['city_with_type'] as String?,
      city_type: map['city_type'] as String?,
      city_type_full: map['city_type_full'] as String?,
      city: map['city'] as String?,
      city_area: map['city_area'] as String?,
      city_district_fias_id: map['city_district_fias_id'] as String?,
      city_district_kladr_id: map['city_district_kladr_id'] as String?,
      city_district_with_type: map['city_district_with_type'] as String?,
      city_district_type: map['city_district_type'] as String?,
      city_district_type_full: map['city_district_type_full'] as String?,
      city_district: map['city_district'] as String?,
      settlement_fias_id: map['settlement_fias_id'] as String?,
      settlement_kladr_id: map['settlement_kladr_id'] as String?,
      settlement_with_type: map['settlement_with_type'] as String?,
      settlement_type: map['settlement_type'] as String?,
      settlement_type_full: map['settlement_type_full'] as String?,
      settlement: map['settlement'] as String?,
      street_fias_id: map['street_fias_id'] as String?,
      street_kladr_id: map['street_kladr_id'] as String?,
      street_with_type: map['street_with_type'] as String?,
      street_type: map['street_type'] as String?,
      street_type_full: map['street_type_full'] as String?,
      street: map['street'] as String?,
      stead_fias_id: map['stead_fias_id'] as String?,
      stead_cadnum: map['stead_cadnum'] as String?,
      stead_type: map['stead_type'] as String?,
      stead_type_full: map['stead_type_full'] as String?,
      stead: map['stead'] as String?,
      house_fias_id: map['house_fias_id'] as String?,
      house_kladr_id: map['house_kladr_id'] as String?,
      house_cadnum: map['house_cadnum'] as String?,
      house_type: map['house_type'] as String?,
      house_type_full: map['house_type_full'] as String?,
      house: map['house'] as String?,
      block_type: map['block_type'] as String?,
      block_type_full: map['block_type_full'] as String?,
      block: map['block'] as String?,
      entrance: map['entrance'] as String?,
      floor: map['floor'] as String?,
      flat_fias_id: map['flat_fias_id'] as String?,
      flat_cadnum: map['flat_cadnum'] as String?,
      flat_type: map['flat_type'] as String?,
      flat_type_full: map['flat_type_full'] as String?,
      flat: map['flat'] as String?,
      flat_area: map['flat_area'] as String?,
      fias_id: map['fias_id'] as String?,
      okato: map['okato'] as String?,
    );
  }

  DataAddress copyWith({
    String? postal_code,
    String? country,
    String? country_iso_code,
    String? federal_district,
    String? region_fias_id,
    String? region_kladr_id,
    String? region_iso_code,
    String? region_with_type,
    String? region_type,
    String? region_type_full,
    String? region,
    String? area_fias_id,
    String? area_kladr_id,
    String? area_with_type,
    String? area_type,
    String? area_type_full,
    String? area,
    String? city_fias_id,
    String? city_kladr_id,
    String? city_with_type,
    String? city_type,
    String? city_type_full,
    String? city,
    String? city_area,
    String? city_district_fias_id,
    String? city_district_kladr_id,
    String? city_district_with_type,
    String? city_district_type,
    String? city_district_type_full,
    String? city_district,
    String? settlement_fias_id,
    String? settlement_kladr_id,
    String? settlement_with_type,
    String? settlement_type,
    String? settlement_type_full,
    String? settlement,
    String? street_fias_id,
    String? street_kladr_id,
    String? street_with_type,
    String? street_type,
    String? street_type_full,
    String? street,
    String? stead_fias_id,
    String? stead_cadnum,
    String? stead_type,
    String? stead_type_full,
    String? stead,
    String? house_fias_id,
    String? house_kladr_id,
    String? house_cadnum,
    String? house_type,
    String? house_type_full,
    String? house,
    String? block_type,
    String? block_type_full,
    String? block,
    String? entrance,
    String? floor,
    String? flat_fias_id,
    String? flat_cadnum,
    String? flat_type,
    String? flat_type_full,
    String? flat,
    String? flat_area,
    String? fias_id,
    String? okato,
  }) {
    return DataAddress(
      postal_code: postal_code ?? this.postal_code,
      country: country ?? this.country,
      country_iso_code: country_iso_code ?? this.country_iso_code,
      federal_district: federal_district ?? this.federal_district,
      region_fias_id: region_fias_id ?? this.region_fias_id,
      region_kladr_id: region_kladr_id ?? this.region_kladr_id,
      region_iso_code: region_iso_code ?? this.region_iso_code,
      region_with_type: region_with_type ?? this.region_with_type,
      region_type: region_type ?? this.region_type,
      region_type_full: region_type_full ?? this.region_type_full,
      region: region ?? this.region,
      area_fias_id: area_fias_id ?? this.area_fias_id,
      area_kladr_id: area_kladr_id ?? this.area_kladr_id,
      area_with_type: area_with_type ?? this.area_with_type,
      area_type: area_type ?? this.area_type,
      area_type_full: area_type_full ?? this.area_type_full,
      area: area ?? this.area,
      city_fias_id: city_fias_id ?? this.city_fias_id,
      city_kladr_id: city_kladr_id ?? this.city_kladr_id,
      city_with_type: city_with_type ?? this.city_with_type,
      city_type: city_type ?? this.city_type,
      city_type_full: city_type_full ?? this.city_type_full,
      city: city ?? this.city,
      city_area: city_area ?? this.city_area,
      city_district_fias_id:
          city_district_fias_id ?? this.city_district_fias_id,
      city_district_kladr_id:
          city_district_kladr_id ?? this.city_district_kladr_id,
      city_district_with_type:
          city_district_with_type ?? this.city_district_with_type,
      city_district_type: city_district_type ?? this.city_district_type,
      city_district_type_full:
          city_district_type_full ?? this.city_district_type_full,
      city_district: city_district ?? this.city_district,
      settlement_fias_id: settlement_fias_id ?? this.settlement_fias_id,
      settlement_kladr_id: settlement_kladr_id ?? this.settlement_kladr_id,
      settlement_with_type: settlement_with_type ?? this.settlement_with_type,
      settlement_type: settlement_type ?? this.settlement_type,
      settlement_type_full: settlement_type_full ?? this.settlement_type_full,
      settlement: settlement ?? this.settlement,
      street_fias_id: street_fias_id ?? this.street_fias_id,
      street_kladr_id: street_kladr_id ?? this.street_kladr_id,
      street_with_type: street_with_type ?? this.street_with_type,
      street_type: street_type ?? this.street_type,
      street_type_full: street_type_full ?? this.street_type_full,
      street: street ?? this.street,
      stead_fias_id: stead_fias_id ?? this.stead_fias_id,
      stead_cadnum: stead_cadnum ?? this.stead_cadnum,
      stead_type: stead_type ?? this.stead_type,
      stead_type_full: stead_type_full ?? this.stead_type_full,
      stead: stead ?? this.stead,
      house_fias_id: house_fias_id ?? this.house_fias_id,
      house_kladr_id: house_kladr_id ?? this.house_kladr_id,
      house_cadnum: house_cadnum ?? this.house_cadnum,
      house_type: house_type ?? this.house_type,
      house_type_full: house_type_full ?? this.house_type_full,
      house: house ?? this.house,
      block_type: block_type ?? this.block_type,
      block_type_full: block_type_full ?? this.block_type_full,
      block: block ?? this.block,
      entrance: entrance ?? this.entrance,
      floor: floor ?? this.floor,
      flat_fias_id: flat_fias_id ?? this.flat_fias_id,
      flat_cadnum: flat_cadnum ?? this.flat_cadnum,
      flat_type: flat_type ?? this.flat_type,
      flat_type_full: flat_type_full ?? this.flat_type_full,
      flat: flat ?? this.flat,
      flat_area: flat_area ?? this.flat_area,
      fias_id: fias_id ?? this.fias_id,
      okato: okato ?? this.okato,
    );
  }

  String toJson() => json.encode(toMap());
  factory DataAddress.fromJson(String source) => DataAddress.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataAddress &&
            (identical(
                  other.postal_code,
                  postal_code,
                ) ||
                other.postal_code == postal_code) &&
            (identical(
                  other.country,
                  country,
                ) ||
                other.country == country) &&
            (identical(
                  other.country_iso_code,
                  country_iso_code,
                ) ||
                other.country_iso_code == country_iso_code) &&
            (identical(
                  other.federal_district,
                  federal_district,
                ) ||
                other.federal_district == federal_district) &&
            (identical(
                  other.region_fias_id,
                  region_fias_id,
                ) ||
                other.region_fias_id == region_fias_id) &&
            (identical(
                  other.region_kladr_id,
                  region_kladr_id,
                ) ||
                other.region_kladr_id == region_kladr_id) &&
            (identical(
                  other.region_iso_code,
                  region_iso_code,
                ) ||
                other.region_iso_code == region_iso_code) &&
            (identical(
                  other.region_with_type,
                  region_with_type,
                ) ||
                other.region_with_type == region_with_type) &&
            (identical(
                  other.region_type,
                  region_type,
                ) ||
                other.region_type == region_type) &&
            (identical(
                  other.region_type_full,
                  region_type_full,
                ) ||
                other.region_type_full == region_type_full) &&
            (identical(
                  other.region,
                  region,
                ) ||
                other.region == region) &&
            (identical(
                  other.area_fias_id,
                  area_fias_id,
                ) ||
                other.area_fias_id == area_fias_id) &&
            (identical(
                  other.area_kladr_id,
                  area_kladr_id,
                ) ||
                other.area_kladr_id == area_kladr_id) &&
            (identical(
                  other.area_with_type,
                  area_with_type,
                ) ||
                other.area_with_type == area_with_type) &&
            (identical(
                  other.area_type,
                  area_type,
                ) ||
                other.area_type == area_type) &&
            (identical(
                  other.area_type_full,
                  area_type_full,
                ) ||
                other.area_type_full == area_type_full) &&
            (identical(
                  other.area,
                  area,
                ) ||
                other.area == area) &&
            (identical(
                  other.city_fias_id,
                  city_fias_id,
                ) ||
                other.city_fias_id == city_fias_id) &&
            (identical(
                  other.city_kladr_id,
                  city_kladr_id,
                ) ||
                other.city_kladr_id == city_kladr_id) &&
            (identical(
                  other.city_with_type,
                  city_with_type,
                ) ||
                other.city_with_type == city_with_type) &&
            (identical(
                  other.city_type,
                  city_type,
                ) ||
                other.city_type == city_type) &&
            (identical(
                  other.city_type_full,
                  city_type_full,
                ) ||
                other.city_type_full == city_type_full) &&
            (identical(
                  other.city,
                  city,
                ) ||
                other.city == city) &&
            (identical(
                  other.city_area,
                  city_area,
                ) ||
                other.city_area == city_area) &&
            (identical(
                  other.city_district_fias_id,
                  city_district_fias_id,
                ) ||
                other.city_district_fias_id == city_district_fias_id) &&
            (identical(
                  other.city_district_kladr_id,
                  city_district_kladr_id,
                ) ||
                other.city_district_kladr_id == city_district_kladr_id) &&
            (identical(
                  other.city_district_with_type,
                  city_district_with_type,
                ) ||
                other.city_district_with_type == city_district_with_type) &&
            (identical(
                  other.city_district_type,
                  city_district_type,
                ) ||
                other.city_district_type == city_district_type) &&
            (identical(
                  other.city_district_type_full,
                  city_district_type_full,
                ) ||
                other.city_district_type_full == city_district_type_full) &&
            (identical(
                  other.city_district,
                  city_district,
                ) ||
                other.city_district == city_district) &&
            (identical(
                  other.settlement_fias_id,
                  settlement_fias_id,
                ) ||
                other.settlement_fias_id == settlement_fias_id) &&
            (identical(
                  other.settlement_kladr_id,
                  settlement_kladr_id,
                ) ||
                other.settlement_kladr_id == settlement_kladr_id) &&
            (identical(
                  other.settlement_with_type,
                  settlement_with_type,
                ) ||
                other.settlement_with_type == settlement_with_type) &&
            (identical(
                  other.settlement_type,
                  settlement_type,
                ) ||
                other.settlement_type == settlement_type) &&
            (identical(
                  other.settlement_type_full,
                  settlement_type_full,
                ) ||
                other.settlement_type_full == settlement_type_full) &&
            (identical(
                  other.settlement,
                  settlement,
                ) ||
                other.settlement == settlement) &&
            (identical(
                  other.street_fias_id,
                  street_fias_id,
                ) ||
                other.street_fias_id == street_fias_id) &&
            (identical(
                  other.street_kladr_id,
                  street_kladr_id,
                ) ||
                other.street_kladr_id == street_kladr_id) &&
            (identical(
                  other.street_with_type,
                  street_with_type,
                ) ||
                other.street_with_type == street_with_type) &&
            (identical(
                  other.street_type,
                  street_type,
                ) ||
                other.street_type == street_type) &&
            (identical(
                  other.street_type_full,
                  street_type_full,
                ) ||
                other.street_type_full == street_type_full) &&
            (identical(
                  other.street,
                  street,
                ) ||
                other.street == street) &&
            (identical(
                  other.stead_fias_id,
                  stead_fias_id,
                ) ||
                other.stead_fias_id == stead_fias_id) &&
            (identical(
                  other.stead_cadnum,
                  stead_cadnum,
                ) ||
                other.stead_cadnum == stead_cadnum) &&
            (identical(
                  other.stead_type,
                  stead_type,
                ) ||
                other.stead_type == stead_type) &&
            (identical(
                  other.stead_type_full,
                  stead_type_full,
                ) ||
                other.stead_type_full == stead_type_full) &&
            (identical(
                  other.stead,
                  stead,
                ) ||
                other.stead == stead) &&
            (identical(
                  other.house_fias_id,
                  house_fias_id,
                ) ||
                other.house_fias_id == house_fias_id) &&
            (identical(
                  other.house_kladr_id,
                  house_kladr_id,
                ) ||
                other.house_kladr_id == house_kladr_id) &&
            (identical(
                  other.house_cadnum,
                  house_cadnum,
                ) ||
                other.house_cadnum == house_cadnum) &&
            (identical(
                  other.house_type,
                  house_type,
                ) ||
                other.house_type == house_type) &&
            (identical(
                  other.house_type_full,
                  house_type_full,
                ) ||
                other.house_type_full == house_type_full) &&
            (identical(
                  other.house,
                  house,
                ) ||
                other.house == house) &&
            (identical(
                  other.block_type,
                  block_type,
                ) ||
                other.block_type == block_type) &&
            (identical(
                  other.block_type_full,
                  block_type_full,
                ) ||
                other.block_type_full == block_type_full) &&
            (identical(
                  other.block,
                  block,
                ) ||
                other.block == block) &&
            (identical(
                  other.entrance,
                  entrance,
                ) ||
                other.entrance == entrance) &&
            (identical(
                  other.floor,
                  floor,
                ) ||
                other.floor == floor) &&
            (identical(
                  other.flat_fias_id,
                  flat_fias_id,
                ) ||
                other.flat_fias_id == flat_fias_id) &&
            (identical(
                  other.flat_cadnum,
                  flat_cadnum,
                ) ||
                other.flat_cadnum == flat_cadnum) &&
            (identical(
                  other.flat_type,
                  flat_type,
                ) ||
                other.flat_type == flat_type) &&
            (identical(
                  other.flat_type_full,
                  flat_type_full,
                ) ||
                other.flat_type_full == flat_type_full) &&
            (identical(
                  other.flat,
                  flat,
                ) ||
                other.flat == flat) &&
            (identical(
                  other.flat_area,
                  flat_area,
                ) ||
                other.flat_area == flat_area) &&
            (identical(
                  other.fias_id,
                  fias_id,
                ) ||
                other.fias_id == fias_id) &&
            (identical(
                  other.okato,
                  okato,
                ) ||
                other.okato == okato));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        postal_code,
        country,
        country_iso_code,
        federal_district,
        region_fias_id,
        region_kladr_id,
        region_iso_code,
        region_with_type,
        region_type,
        region_type_full,
        region,
        area_fias_id,
        area_kladr_id,
        area_with_type,
        area_type,
        area_type_full,
        area,
        city_fias_id,
        city_kladr_id,
        city_with_type,
        city_type,
        city_type_full,
        city,
        city_area,
        city_district_fias_id,
        city_district_kladr_id,
        city_district_with_type,
        city_district_type,
        city_district_type_full,
        city_district,
        settlement_fias_id,
        settlement_kladr_id,
        settlement_with_type,
        settlement_type,
        settlement_type_full,
        settlement,
        street_fias_id,
        street_kladr_id,
        street_with_type,
        street_type,
        street_type_full,
        street,
        stead_fias_id,
        stead_cadnum,
        stead_type,
        stead_type_full,
        stead,
        house_fias_id,
        house_kladr_id,
        house_cadnum,
        house_type,
        house_type_full,
        house,
        block_type,
        block_type_full,
        block,
        entrance,
        floor,
        flat_fias_id,
        flat_cadnum,
        flat_type,
        flat_type_full,
        flat,
        flat_area,
        fias_id,
        okato,
      ]);

  @override
  String toString() {
    return 'DataAddress(postal_code: $postal_code, country: $country, country_iso_code: $country_iso_code, federal_district: $federal_district, region_fias_id: $region_fias_id, region_kladr_id: $region_kladr_id, region_iso_code: $region_iso_code, region_with_type: $region_with_type, region_type: $region_type, region_type_full: $region_type_full, region: $region, area_fias_id: $area_fias_id, area_kladr_id: $area_kladr_id, area_with_type: $area_with_type, area_type: $area_type, area_type_full: $area_type_full, area: $area, city_fias_id: $city_fias_id, city_kladr_id: $city_kladr_id, city_with_type: $city_with_type, city_type: $city_type, city_type_full: $city_type_full, city: $city, city_area: $city_area, city_district_fias_id: $city_district_fias_id, city_district_kladr_id: $city_district_kladr_id, city_district_with_type: $city_district_with_type, city_district_type: $city_district_type, city_district_type_full: $city_district_type_full, city_district: $city_district, settlement_fias_id: $settlement_fias_id, settlement_kladr_id: $settlement_kladr_id, settlement_with_type: $settlement_with_type, settlement_type: $settlement_type, settlement_type_full: $settlement_type_full, settlement: $settlement, street_fias_id: $street_fias_id, street_kladr_id: $street_kladr_id, street_with_type: $street_with_type, street_type: $street_type, street_type_full: $street_type_full, street: $street, stead_fias_id: $stead_fias_id, stead_cadnum: $stead_cadnum, stead_type: $stead_type, stead_type_full: $stead_type_full, stead: $stead, house_fias_id: $house_fias_id, house_kladr_id: $house_kladr_id, house_cadnum: $house_cadnum, house_type: $house_type, house_type_full: $house_type_full, house: $house, block_type: $block_type, block_type_full: $block_type_full, block: $block, entrance: $entrance, floor: $floor, flat_fias_id: $flat_fias_id, flat_cadnum: $flat_cadnum, flat_type: $flat_type, flat_type_full: $flat_type_full, flat: $flat, flat_area: $flat_area, fias_id: $fias_id, okato: $okato, )';
  }
}
