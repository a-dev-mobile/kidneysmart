// turnGen
enum EnumInfoType implements Comparable<EnumInfoType> {
  glomerularFiltration(0),
  urine(1),
  diabet(2),
  activity(3),
  dialysis(4),
  creatinine(5),
  gender(6),
  dateOfBirth(7),
  height(8),
  weight(9),
  bodyMassIndex(10),
  hypertension(11),
  stagesCKD(12),
  dryWeight(13);

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
      case 0:
        return glomerularFiltration;
      case 1:
        return urine;
      case 2:
        return diabet;
      case 3:
        return activity;
      case 4:
        return dialysis;
      case 5:
        return creatinine;
      case 6:
        return gender;
      case 7:
        return dateOfBirth;
      case 8:
        return height;
      case 9:
        return weight;
      case 10:
        return bodyMassIndex;
      case 11:
        return hypertension;
      case 12:
        return stagesCKD;
      case 13:
        return dryWeight;
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
    required T Function() glomerularFiltration,
    required T Function() urine,
    required T Function() diabet,
    required T Function() activity,
    required T Function() dialysis,
    required T Function() creatinine,
    required T Function() gender,
    required T Function() dateOfBirth,
    required T Function() height,
    required T Function() weight,
    required T Function() bodyMassIndex,
    required T Function() hypertension,
    required T Function() stagesCKD,
    required T Function() dryWeight,
  }) {
    switch (this) {
      case EnumInfoType.glomerularFiltration:
        return glomerularFiltration();
      case EnumInfoType.urine:
        return urine();
      case EnumInfoType.diabet:
        return diabet();
      case EnumInfoType.activity:
        return activity();
      case EnumInfoType.dialysis:
        return dialysis();
      case EnumInfoType.creatinine:
        return creatinine();
      case EnumInfoType.gender:
        return gender();
      case EnumInfoType.dateOfBirth:
        return dateOfBirth();
      case EnumInfoType.height:
        return height();
      case EnumInfoType.weight:
        return weight();
      case EnumInfoType.bodyMassIndex:
        return bodyMassIndex();
      case EnumInfoType.hypertension:
        return hypertension();
      case EnumInfoType.stagesCKD:
        return stagesCKD();
      case EnumInfoType.dryWeight:
        return dryWeight();
    }
  }

  T mapValue<T>({
    required T glomerularFiltration,
    required T urine,
    required T diabet,
    required T activity,
    required T dialysis,
    required T creatinine,
    required T gender,
    required T dateOfBirth,
    required T height,
    required T weight,
    required T bodyMassIndex,
    required T hypertension,
    required T stagesCKD,
    required T dryWeight,
  }) {
    switch (this) {
      case EnumInfoType.glomerularFiltration:
        return glomerularFiltration;
      case EnumInfoType.urine:
        return urine;
      case EnumInfoType.diabet:
        return diabet;
      case EnumInfoType.activity:
        return activity;
      case EnumInfoType.dialysis:
        return dialysis;
      case EnumInfoType.creatinine:
        return creatinine;
      case EnumInfoType.gender:
        return gender;
      case EnumInfoType.dateOfBirth:
        return dateOfBirth;
      case EnumInfoType.height:
        return height;
      case EnumInfoType.weight:
        return weight;
      case EnumInfoType.bodyMassIndex:
        return bodyMassIndex;
      case EnumInfoType.hypertension:
        return hypertension;
      case EnumInfoType.stagesCKD:
        return stagesCKD;
      case EnumInfoType.dryWeight:
        return dryWeight;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? glomerularFiltration,
    T Function()? urine,
    T Function()? diabet,
    T Function()? activity,
    T Function()? dialysis,
    T Function()? creatinine,
    T Function()? gender,
    T Function()? dateOfBirth,
    T Function()? height,
    T Function()? weight,
    T Function()? bodyMassIndex,
    T Function()? hypertension,
    T Function()? stagesCKD,
    T Function()? dryWeight,
  }) =>
      map<T>(
        glomerularFiltration: glomerularFiltration ?? orElse,
        urine: urine ?? orElse,
        diabet: diabet ?? orElse,
        activity: activity ?? orElse,
        dialysis: dialysis ?? orElse,
        creatinine: creatinine ?? orElse,
        gender: gender ?? orElse,
        dateOfBirth: dateOfBirth ?? orElse,
        height: height ?? orElse,
        weight: weight ?? orElse,
        bodyMassIndex: bodyMassIndex ?? orElse,
        hypertension: hypertension ?? orElse,
        stagesCKD: stagesCKD ?? orElse,
        dryWeight: dryWeight ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? glomerularFiltration,
    T? urine,
    T? diabet,
    T? activity,
    T? dialysis,
    T? creatinine,
    T? gender,
    T? dateOfBirth,
    T? height,
    T? weight,
    T? bodyMassIndex,
    T? hypertension,
    T? stagesCKD,
    T? dryWeight,
  }) =>
      mapValue<T>(
        glomerularFiltration: glomerularFiltration ?? orElse,
        urine: urine ?? orElse,
        diabet: diabet ?? orElse,
        activity: activity ?? orElse,
        dialysis: dialysis ?? orElse,
        creatinine: creatinine ?? orElse,
        gender: gender ?? orElse,
        dateOfBirth: dateOfBirth ?? orElse,
        height: height ?? orElse,
        weight: weight ?? orElse,
        bodyMassIndex: bodyMassIndex ?? orElse,
        hypertension: hypertension ?? orElse,
        stagesCKD: stagesCKD ?? orElse,
        dryWeight: dryWeight ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? glomerularFiltration,
    T Function()? urine,
    T Function()? diabet,
    T Function()? activity,
    T Function()? dialysis,
    T Function()? creatinine,
    T Function()? gender,
    T Function()? dateOfBirth,
    T Function()? height,
    T Function()? weight,
    T Function()? bodyMassIndex,
    T Function()? hypertension,
    T Function()? stagesCKD,
    T Function()? dryWeight,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        glomerularFiltration: glomerularFiltration,
        urine: urine,
        diabet: diabet,
        activity: activity,
        dialysis: dialysis,
        creatinine: creatinine,
        gender: gender,
        dateOfBirth: dateOfBirth,
        height: height,
        weight: weight,
        bodyMassIndex: bodyMassIndex,
        hypertension: hypertension,
        stagesCKD: stagesCKD,
        dryWeight: dryWeight,
      );

  T? maybeMapOrNullValue<T>({
    T? glomerularFiltration,
    T? urine,
    T? diabet,
    T? activity,
    T? dialysis,
    T? creatinine,
    T? gender,
    T? dateOfBirth,
    T? height,
    T? weight,
    T? bodyMassIndex,
    T? hypertension,
    T? stagesCKD,
    T? dryWeight,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        glomerularFiltration: glomerularFiltration,
        urine: urine,
        diabet: diabet,
        activity: activity,
        dialysis: dialysis,
        creatinine: creatinine,
        gender: gender,
        dateOfBirth: dateOfBirth,
        height: height,
        weight: weight,
        bodyMassIndex: bodyMassIndex,
        hypertension: hypertension,
        stagesCKD: stagesCKD,
        dryWeight: dryWeight,
      );

  static List<int> getValues() =>
      EnumInfoType.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumInfoType other) => index.compareTo(other.index);
}

extension $EnumInfoType on EnumInfoType {
  bool get glomerularFiltration => this == EnumInfoType.glomerularFiltration;
  bool get urine => this == EnumInfoType.urine;
  bool get diabet => this == EnumInfoType.diabet;
  bool get activity => this == EnumInfoType.activity;
  bool get dialysis => this == EnumInfoType.dialysis;
  bool get creatinine => this == EnumInfoType.creatinine;
  bool get gender => this == EnumInfoType.gender;
  bool get dateOfBirth => this == EnumInfoType.dateOfBirth;
  bool get height => this == EnumInfoType.height;
  bool get weight => this == EnumInfoType.weight;
  bool get bodyMassIndex => this == EnumInfoType.bodyMassIndex;
  bool get hypertension => this == EnumInfoType.hypertension;
  bool get stagesCKD => this == EnumInfoType.stagesCKD;
  bool get dryWeight => this == EnumInfoType.dryWeight;
}
