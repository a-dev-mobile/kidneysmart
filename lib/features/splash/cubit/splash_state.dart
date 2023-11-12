// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class SplashState {
  /* init: true */
  final bool isLoad;
  /* init:true */
  final bool isSendData;

// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const SplashState({
    this.isLoad = true,
    this.isSendData = true,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoad': isLoad,
      'isSendData': isSendData,
    };
  }

  factory SplashState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const SplashState();

    return SplashState(
      isLoad: map['isLoad'] as bool? ?? true,
      isSendData: map['isSendData'] as bool? ?? true,
    );
  }

  SplashState copyWith({
    bool? isLoad,
    bool? isSendData,
  }) {
    return SplashState(
      isLoad: isLoad ?? this.isLoad,
      isSendData: isSendData ?? this.isSendData,
    );
  }

  String toJson() => json.encode(toMap());
  factory SplashState.fromJson(String source) => SplashState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashState &&
            (identical(
                  other.isLoad,
                  isLoad,
                ) ||
                other.isLoad == isLoad) &&
            (identical(
                  other.isSendData,
                  isSendData,
                ) ||
                other.isSendData == isSendData));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoad,
        isSendData,
      ]);

  @override
  String toString() {
    return 'SplashState(isLoad: $isLoad, isSendData: $isSendData, )';
  }
}
