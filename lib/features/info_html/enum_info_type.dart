// turnGen
enum EnumInfoType with Comparable<EnumInfoType> {
  creatinine(1),
  urine(2),
  diabet(3),
  activity(4),
  dialysis(5);

  const EnumInfoType(this.value);
  final int value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumInfoType fromValue(
    int? value, {
    EnumInfoType? fallback,
  }) {
    switch (value) {
      case 1:
        return creatinine;
      case 2:
        return urine;
      case 3:
        return diabet;
      case 4:
        return activity;
      case 5:
        return dialysis;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumInfoType',
            ));
    }
  }

  T map<T>({
    required T Function() creatinine,
    required T Function() urine,
    required T Function() diabet,
    required T Function() activity,
    required T Function() dialysis,
  }) {
    switch (this) {
      case EnumInfoType.creatinine:
        return creatinine();
      case EnumInfoType.urine:
        return urine();
      case EnumInfoType.diabet:
        return diabet();
      case EnumInfoType.activity:
        return activity();
      case EnumInfoType.dialysis:
        return dialysis();
    }
  }

  T mapValue<T>({
    required T creatinine,
    required T urine,
    required T diabet,
    required T activity,
    required T dialysis,
  }) {
    switch (this) {
      case EnumInfoType.creatinine:
        return creatinine;
      case EnumInfoType.urine:
        return urine;
      case EnumInfoType.diabet:
        return diabet;
      case EnumInfoType.activity:
        return activity;
      case EnumInfoType.dialysis:
        return dialysis;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? creatinine,
    T Function()? urine,
    T Function()? diabet,
    T Function()? activity,
    T Function()? dialysis,
  }) =>
      map<T>(
        creatinine: creatinine ?? orElse,
        urine: urine ?? orElse,
        diabet: diabet ?? orElse,
        activity: activity ?? orElse,
        dialysis: dialysis ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? creatinine,
    T? urine,
    T? diabet,
    T? activity,
    T? dialysis,
  }) =>
      mapValue<T>(
        creatinine: creatinine ?? orElse,
        urine: urine ?? orElse,
        diabet: diabet ?? orElse,
        activity: activity ?? orElse,
        dialysis: dialysis ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? creatinine,
    T Function()? urine,
    T Function()? diabet,
    T Function()? activity,
    T Function()? dialysis,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        creatinine: creatinine,
        urine: urine,
        diabet: diabet,
        activity: activity,
        dialysis: dialysis,
      );

  T? maybeMapOrNullValue<T>({
    T? creatinine,
    T? urine,
    T? diabet,
    T? activity,
    T? dialysis,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        creatinine: creatinine,
        urine: urine,
        diabet: diabet,
        activity: activity,
        dialysis: dialysis,
      );

  static List<int> getValues() =>
      EnumInfoType.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumInfoType other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumInfoType.$name($value)';
}
