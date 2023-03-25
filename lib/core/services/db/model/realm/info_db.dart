// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class InfoDb {                                              
  /* init: '' */
  final String url_ru;
  /* init: '' */
  final String url_en;

  // end
   
//          --TURN_GEN--
//          v0.8.0 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const InfoDb({
    this.url_ru = '',
    this.url_en = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url_ru': url_ru, 
      'url_en': url_en, 
    };
  }


  factory InfoDb.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const InfoDb();

    return InfoDb(
      url_ru: map['url_ru'] != null ? map['url_ru'] as String : '', 
      url_en: map['url_en'] != null ? map['url_en'] as String : '', 
    );
  }

  InfoDb copyWith({
    String? url_ru,
    String? url_en,
  }) {
    return InfoDb(
      url_ru: url_ru ?? this.url_ru, 
      url_en: url_en ?? this.url_en, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory InfoDb.fromJson(String source) => InfoDb.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoDb &&
            (identical(other.url_ru, url_ru) || other.url_ru == url_ru) && 
            (identical(other.url_en, url_en) || other.url_en == url_en));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        url_ru,
        url_en,
]);

  @override
  String toString() {
    return 'InfoDb(url_ru: $url_ru, url_en: $url_en, )';
    }

}
