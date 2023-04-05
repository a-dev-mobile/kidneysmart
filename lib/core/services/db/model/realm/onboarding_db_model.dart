// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:nutrition/core/services/db/db.dart';

@immutable
class OnboardingDbModel {
  /* init: '' */
  final String url;
  /* init: const [] */
  final List<String> ttt;
  /* init: '' */
  final String title;
  /* init: const InfoDb() */
  final InfoDb info;
  // end
   
//          --TURN_GEN--
//          v0.8.3 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const OnboardingDbModel({
    this.url = '',
    this.ttt = const [],
    this.title = '',
    this.info = const InfoDb(),
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url, 
      'ttt': ttt, 
      'title': title, 
      'info': info.toMap(), 
    };
  }


  factory OnboardingDbModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const OnboardingDbModel();

    return OnboardingDbModel(
      url: map['url'] as String? ?? '', 
      ttt: (map['ttt'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [], 
      title: map['title'] as String? ?? '', 
      info: map['info'] != null ? InfoDb.fromMap(Map<String, dynamic>.from(map['info'] as Map)) : const InfoDb(), 
    );
  }

  OnboardingDbModel copyWith({
    String? url,
    List<String>? ttt,
    String? title,
    InfoDb? info,
  }) {
    return OnboardingDbModel(
      url: url ?? this.url, 
      ttt: ttt ?? this.ttt, 
      title: title ?? this.title, 
      info: info ?? this.info, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory OnboardingDbModel.fromJson(String source) => OnboardingDbModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnboardingDbModel &&
            (identical(other.url, url) || other.url == url) && 
            const DeepCollectionEquality().equals(other.ttt, ttt,) && 
            (identical(other.title, title) || other.title == title) && 
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        url,
        const DeepCollectionEquality().hash(ttt,),
        title,
        info,
]);

  @override
  String toString() {
    return 'OnboardingDbModel(url: $url, ttt: $ttt, title: $title, info: $info, )';
    }

}
