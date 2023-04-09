// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:nutrition/core/enum/enum.dart';

@immutable
class InfoGfrState {
  /* init: EnumResult.init */
  final EnumResult enumResult;
  /* init: '' */
  final String textHtml;
  /* init: '' */
  final String url;
  // end
   
//          --TURN_GEN--
//          v0.8.5 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const InfoGfrState({
    this.enumResult = EnumResult.init,
    this.textHtml = '',
    this.url = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumResult': enumResult.index, 
      'textHtml': textHtml, 
      'url': url, 
    };
  }


  factory InfoGfrState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const InfoGfrState();

    return InfoGfrState(
      enumResult: map['enumResult'] != null ? EnumResult.values[map['enumResult'] as int] : EnumResult.init, 
      textHtml: map['textHtml'] as String? ?? '', 
      url: map['url'] as String? ?? '', 
    );
  }

  InfoGfrState copyWith({
    EnumResult? enumResult,
    String? textHtml,
    String? url,
  }) {
    return InfoGfrState(
      enumResult: enumResult ?? this.enumResult, 
      textHtml: textHtml ?? this.textHtml, 
      url: url ?? this.url, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory InfoGfrState.fromJson(String source) => InfoGfrState.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoGfrState &&
            (identical(other.enumResult, enumResult) || other.enumResult == enumResult) && 
            (identical(other.textHtml, textHtml) || other.textHtml == textHtml) && 
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumResult,
        textHtml,
        url,
]);

  @override
  String toString() {
    return 'InfoGfrState(enumResult: $enumResult, textHtml: $textHtml, url: $url, )';
    }

}
