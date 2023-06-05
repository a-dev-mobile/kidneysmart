// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:kidneysmart/features/steps/activity/activity.dart';
import 'package:meta/meta.dart';

@immutable
class StepActivityItemModel {
/* init: EnumActivity.none */
  final EnumActivity enumActivity;
/* init: '' */
  final String title;
/* init: '' */
  final String content;
// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const StepActivityItemModel({
    this.enumActivity = EnumActivity.none,
    this.title = '',
    this.content = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumActivity': enumActivity.index,
      'title': title,
      'content': content,
    };
  }

  factory StepActivityItemModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const StepActivityItemModel();

    return StepActivityItemModel(
      enumActivity: map['enumActivity'] != null
          ? map['enumActivity'] is int
              ? EnumActivity.values[map['enumActivity'] as int]
              : map['enumActivity'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumActivity.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumActivity.')[1] ==
                          map['enumActivity'].toString(),
                      orElse: () => EnumActivity.none,
                    )
                  : EnumActivity.none
          : EnumActivity.none,
      title: map['title'] as String? ?? '',
      content: map['content'] as String? ?? '',
    );
  }

  StepActivityItemModel copyWith({
    EnumActivity? enumActivity,
    String? title,
    String? content,
  }) {
    return StepActivityItemModel(
      enumActivity: enumActivity ?? this.enumActivity,
      title: title ?? this.title,
      content: content ?? this.content,
    );
  }

  String toJson() => json.encode(toMap());
  factory StepActivityItemModel.fromJson(String source) =>
      StepActivityItemModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepActivityItemModel &&
            (identical(
                  other.enumActivity,
                  enumActivity,
                ) ||
                other.enumActivity == enumActivity) &&
            (identical(
                  other.title,
                  title,
                ) ||
                other.title == title) &&
            (identical(
                  other.content,
                  content,
                ) ||
                other.content == content));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumActivity,
        title,
        content,
      ]);

  @override
  String toString() {
    return 'StepActivityItemModel(enumActivity: $enumActivity, title: $title, content: $content, )';
  }
}
