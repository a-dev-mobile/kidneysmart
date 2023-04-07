// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class InfoUrlModel {
  /* init: '' */
  final String ru;
  /* init: '' */
  final String en;

  // end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const InfoUrlModel({
    this.ru = '',
    this.en = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ru': ru, 
      'en': en, 
    };
  }


  factory InfoUrlModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const InfoUrlModel();

    return InfoUrlModel(
      ru: map['ru'] as String? ?? '', 
      en: map['en'] as String? ?? '', 
    );
  }

  InfoUrlModel copyWith({
    String? ru,
    String? en,
  }) {
    return InfoUrlModel(
      ru: ru ?? this.ru, 
      en: en ?? this.en, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory InfoUrlModel.fromJson(String source) => InfoUrlModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoUrlModel &&
            (identical(other.ru, ru) || other.ru == ru) && 
            (identical(other.en, en) || other.en == en));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        ru,
        en,
]);

  @override
  String toString() {
    return 'InfoUrlModel(ru: $ru, en: $en, )';
    }

}
