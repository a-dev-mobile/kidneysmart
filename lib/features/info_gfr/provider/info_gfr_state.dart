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
  final String desc;
  /* init: '' */
  final String title;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const InfoGfrState({
    this.enumResult = EnumResult.init,
    this.desc = '',
    this.title = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumResult': enumResult.index,
      'desc': desc,
      'title': title,
    };
  }

  factory InfoGfrState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const InfoGfrState();

    return InfoGfrState(
      enumResult: map['enumResult'] != null
          ? EnumResult.values[map['enumResult'] as int]
          : EnumResult.init,
      desc: map['desc'] as String? ?? '',
      title: map['title'] as String? ?? '',
    );
  }

  InfoGfrState copyWith({
    EnumResult? enumResult,
    String? desc,
    String? title,
  }) {
    return InfoGfrState(
      enumResult: enumResult ?? this.enumResult,
      desc: desc ?? this.desc,
      title: title ?? this.title,
    );
  }

  String toJson() => json.encode(toMap());
  factory InfoGfrState.fromJson(String source) => InfoGfrState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoGfrState &&
            (identical(
                  other.enumResult,
                  enumResult,
                ) ||
                other.enumResult == enumResult) &&
            (identical(
                  other.desc,
                  desc,
                ) ||
                other.desc == desc) &&
            (identical(
                  other.title,
                  title,
                ) ||
                other.title == title));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumResult,
        desc,
        title,
      ]);

  @override
  String toString() {
    return 'InfoGfrState(enumResult: $enumResult, desc: $desc, title: $title, )';
  }
}
