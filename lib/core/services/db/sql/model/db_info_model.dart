// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class DbInfoModel {
  /* init: -1 */
  final int id;
  /* init:'' */
  final String ru_title;
/* init:'' */
  final String en_title;
/* init:'' */
  final String ru_desc;
/* init:'' */
  final String en_desc;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DbInfoModel({
    this.id = -1,
    this.ru_title = '',
    this.en_title = '',
    this.ru_desc = '',
    this.en_desc = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ru_title': ru_title,
      'en_title': en_title,
      'ru_desc': ru_desc,
      'en_desc': en_desc,
    };
  }

  factory DbInfoModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DbInfoModel();

    return DbInfoModel(
      id: (map['id'] as num?)?.toInt() ?? -1,
      ru_title: map['ru_title'] as String? ?? '',
      en_title: map['en_title'] as String? ?? '',
      ru_desc: map['ru_desc'] as String? ?? '',
      en_desc: map['en_desc'] as String? ?? '',
    );
  }

  DbInfoModel copyWith({
    int? id,
    String? ru_title,
    String? en_title,
    String? ru_desc,
    String? en_desc,
  }) {
    return DbInfoModel(
      id: id ?? this.id,
      ru_title: ru_title ?? this.ru_title,
      en_title: en_title ?? this.en_title,
      ru_desc: ru_desc ?? this.ru_desc,
      en_desc: en_desc ?? this.en_desc,
    );
  }

  String toJson() => json.encode(toMap());
  factory DbInfoModel.fromJson(String source) => DbInfoModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DbInfoModel &&
            (identical(
                  other.id,
                  id,
                ) ||
                other.id == id) &&
            (identical(
                  other.ru_title,
                  ru_title,
                ) ||
                other.ru_title == ru_title) &&
            (identical(
                  other.en_title,
                  en_title,
                ) ||
                other.en_title == en_title) &&
            (identical(
                  other.ru_desc,
                  ru_desc,
                ) ||
                other.ru_desc == ru_desc) &&
            (identical(
                  other.en_desc,
                  en_desc,
                ) ||
                other.en_desc == en_desc));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        ru_title,
        en_title,
        ru_desc,
        en_desc,
      ]);

  @override
  String toString() {
    return 'DbInfoModel(id: $id, ru_title: $ru_title, en_title: $en_title, ru_desc: $ru_desc, en_desc: $en_desc, )';
  }
}
