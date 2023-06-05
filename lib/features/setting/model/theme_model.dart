// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/features/setting/setting.dart';
import 'package:meta/meta.dart';

@immutable
class ThemeSetting {
  final int? selectedIndex;

  /* init:EnumTheme.light*/
  final EnumTheme enumTheme;

  /* init:const [] */
  final List<ThemeItemModel> listTheme;

/* init: [] */
  final List<bool> listSelected;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const ThemeSetting({
    this.enumTheme = EnumTheme.light,
    this.listTheme = const [],
    this.listSelected = const [],
    this.selectedIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex,
      'enumTheme': enumTheme.index,
      'listTheme': listTheme.map((e) => e.toMap()).toList(),
      'listSelected': listSelected,
    };
  }

  factory ThemeSetting.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ThemeSetting();

    return ThemeSetting(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(),
      enumTheme: map['enumTheme'] != null
          ? map['enumTheme'] is int
              ? EnumTheme.values[map['enumTheme'] as int]
              : map['enumTheme'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumTheme.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumTheme.')[1] ==
                          map['enumTheme'].toString(),
                      orElse: () => EnumTheme.light,
                    )
                  : EnumTheme.light
          : EnumTheme.light,
      listTheme: map['listTheme'] != null
          ? (map['listTheme'] as List<dynamic>)
              .map(
                (e) => ThemeItemModel.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const [],
      listSelected: (map['listSelected'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [],
    );
  }

  ThemeSetting copyWith({
    int? selectedIndex,
    EnumTheme? enumTheme,
    List<ThemeItemModel>? listTheme,
    List<bool>? listSelected,
  }) {
    return ThemeSetting(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enumTheme: enumTheme ?? this.enumTheme,
      listTheme: listTheme ?? this.listTheme,
      listSelected: listSelected ?? this.listSelected,
    );
  }

  String toJson() => json.encode(toMap());
  factory ThemeSetting.fromJson(String source) => ThemeSetting.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeSetting &&
            (identical(
                  other.selectedIndex,
                  selectedIndex,
                ) ||
                other.selectedIndex == selectedIndex) &&
            (identical(
                  other.enumTheme,
                  enumTheme,
                ) ||
                other.enumTheme == enumTheme) &&
            const DeepCollectionEquality().equals(
              other.listTheme,
              listTheme,
            ) &&
            const DeepCollectionEquality().equals(
              other.listSelected,
              listSelected,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        selectedIndex,
        enumTheme,
        const DeepCollectionEquality().hash(
          listTheme,
        ),
        const DeepCollectionEquality().hash(
          listSelected,
        ),
      ]);

  @override
  String toString() {
    return 'ThemeSetting(selectedIndex: $selectedIndex, enumTheme: $enumTheme, listTheme: $listTheme, listSelected: $listSelected, )';
  }
}
