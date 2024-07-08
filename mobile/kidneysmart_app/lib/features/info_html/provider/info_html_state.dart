// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:kidneysmart/core/enum/enum.dart';
import 'package:meta/meta.dart';

@immutable
class InfoHtmlState {
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
  const InfoHtmlState({
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

  factory InfoHtmlState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const InfoHtmlState();

    return InfoHtmlState(
      enumResult: map['enumResult'] != null
          ? map['enumResult'] is int
              ? EnumResult.values[map['enumResult'] as int]
              : map['enumResult'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumResult.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumResult.')[1] ==
                          map['enumResult'].toString(),
                      orElse: () => EnumResult.init,
                    )
                  : EnumResult.init
          : EnumResult.init,
      desc: map['desc'] as String? ?? '',
      title: map['title'] as String? ?? '',
    );
  }

  InfoHtmlState copyWith({
    EnumResult? enumResult,
    String? desc,
    String? title,
  }) {
    return InfoHtmlState(
      enumResult: enumResult ?? this.enumResult,
      desc: desc ?? this.desc,
      title: title ?? this.title,
    );
  }

  String toJson() => json.encode(toMap());
  factory InfoHtmlState.fromJson(String source) => InfoHtmlState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoHtmlState &&
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
    return 'InfoHtmlState(enumResult: $enumResult, desc: $desc, title: $title, )';
  }
}
