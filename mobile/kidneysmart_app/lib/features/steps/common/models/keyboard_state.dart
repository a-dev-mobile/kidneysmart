// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:flutter/widgets.dart';

@immutable
class KeyboardState {
  /* init:false */
  final bool isOpen;
/* init: 0 */
  final double height;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const KeyboardState({
    this.isOpen = false,
    this.height = 0,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isOpen': isOpen,
      'height': height,
    };
  }

  factory KeyboardState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const KeyboardState();

    return KeyboardState(
      isOpen: map['isOpen'] as bool? ?? false,
      height: (map['height'] as num?)?.toDouble() ?? 0,
    );
  }

  KeyboardState copyWith({
    bool? isOpen,
    double? height,
  }) {
    return KeyboardState(
      isOpen: isOpen ?? this.isOpen,
      height: height ?? this.height,
    );
  }

  String toJson() => json.encode(toMap());
  factory KeyboardState.fromJson(String source) => KeyboardState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeyboardState &&
            (identical(
                  other.isOpen,
                  isOpen,
                ) ||
                other.isOpen == isOpen) &&
            (identical(
                  other.height,
                  height,
                ) ||
                other.height == height));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isOpen,
        height,
      ]);

  @override
  String toString() {
    return 'KeyboardState(isOpen: $isOpen, height: $height, )';
  }
}
