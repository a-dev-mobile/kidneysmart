// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

@immutable
class HeightInfoState {
  /* init: const [] */
  final List<String> heightList;
  // end

//          --TURN_GEN--
//           v0.6.0 (data)
//  *************************************
//         GENERATED CODE
//  *************************************

  const HeightInfoState({
    this.heightList = const [],
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'heightList': heightList,
    };
  }

  factory HeightInfoState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const HeightInfoState();

    return HeightInfoState(
      heightList: (map['heightList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );
  }

  HeightInfoState copyWith({
    List<String>? heightList,
  }) {
    return HeightInfoState(
      heightList: heightList ?? this.heightList,
    );
  }

  String toJson() => json.encode(toMap());
  factory HeightInfoState.fromJson(String source) => HeightInfoState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HeightInfoState &&
            const DeepCollectionEquality().equals(
              other.heightList,
              heightList,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(
          heightList,
        ),
      ]);

  @override
  String toString() {
    return 'HeightInfoState(heightList: $heightList, )';
  }
}
