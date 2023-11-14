// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
part of '../notifier/splash_notifier.dart';

@immutable
class SplashState {
/* init: EnumPageStatus.init */
  final EnumPageStatus enumPageStatus;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const SplashState({
    this.enumPageStatus = EnumPageStatus.init,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumPageStatus': enumPageStatus.index,
    };
  }

  factory SplashState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const SplashState();

    return SplashState(
      enumPageStatus: map['enumPageStatus'] != null
          ? map['enumPageStatus'] is int
              ? EnumPageStatus.values[map['enumPageStatus'] as int]
              : map['enumPageStatus'] is String
                  // ignore: prefer-enums-by-name
                  ? EnumPageStatus.values.firstWhere(
                      (e) =>
                          e.toString().split('EnumPageStatus.')[1] ==
                          map['enumPageStatus'].toString(),
                      orElse: () => EnumPageStatus.init,
                    )
                  : EnumPageStatus.init
          : EnumPageStatus.init,
    );
  }

  SplashState copyWith({
    EnumPageStatus? enumPageStatus,
  }) {
    return SplashState(
      enumPageStatus: enumPageStatus ?? this.enumPageStatus,
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
                  other.enumPageStatus,
                  enumPageStatus,
                ) ||
                other.enumPageStatus == enumPageStatus));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enumPageStatus,
      ]);

  @override
  String toString() {
    return 'SplashState(enumPageStatus: $enumPageStatus, )';
  }
}
