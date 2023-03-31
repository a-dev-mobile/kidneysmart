// turnGen
enum EnumWeightStatus with Comparable<EnumWeightStatus> {

  severeUnderweight('severeUnderweight'),
  underweight('underweight'),
  healthyWeight('healthyWeight'),
  overweight('overweight'),
  obesity1('obesity1'),
  obesity2('obesity2'),
  obesity3('obesity3'),
  obesity4('obesity4'),
  none('none');

  const EnumWeightStatus(this.value);
  final String value;

// end

//          --TURN_GEN--
//          v0.8.2 (enum)
//  *************************************
//         GENERATED CODE 
//  *************************************
  

  static EnumWeightStatus fromValue(String? value, {EnumWeightStatus? fallback}) {
    switch (value) {
      case 'severeUnderweight':
        return severeUnderweight;
      case 'underweight':
        return underweight;
      case 'healthyWeight':
        return healthyWeight;
      case 'overweight':
        return overweight;
      case 'obesity1':
        return obesity1;
      case 'obesity2':
        return obesity2;
      case 'obesity3':
        return obesity3;
      case 'obesity4':
        return obesity4;
      case 'none':
        return none;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, '', 'Value not found in EnumWeightStatus',));
    }
  }


  T map<T>({
    required T Function() severeUnderweight,
    required T Function() underweight,
    required T Function() healthyWeight,
    required T Function() overweight,
    required T Function() obesity1,
    required T Function() obesity2,
    required T Function() obesity3,
    required T Function() obesity4,
    required T Function() none,
  }) {
    switch (this) {
      case EnumWeightStatus.severeUnderweight:
        return severeUnderweight();
      case EnumWeightStatus.underweight:
        return underweight();
      case EnumWeightStatus.healthyWeight:
        return healthyWeight();
      case EnumWeightStatus.overweight:
        return overweight();
      case EnumWeightStatus.obesity1:
        return obesity1();
      case EnumWeightStatus.obesity2:
        return obesity2();
      case EnumWeightStatus.obesity3:
        return obesity3();
      case EnumWeightStatus.obesity4:
        return obesity4();
      case EnumWeightStatus.none:
        return none();
    }
  }


  T mapValue<T>({
    required T severeUnderweight,
    required T underweight,
    required T healthyWeight,
    required T overweight,
    required T obesity1,
    required T obesity2,
    required T obesity3,
    required T obesity4,
    required T none,
  }) {
    switch (this) {
      case EnumWeightStatus.severeUnderweight:
        return severeUnderweight;
      case EnumWeightStatus.underweight:
        return underweight;
      case EnumWeightStatus.healthyWeight:
        return healthyWeight;
      case EnumWeightStatus.overweight:
        return overweight;
      case EnumWeightStatus.obesity1:
        return obesity1;
      case EnumWeightStatus.obesity2:
        return obesity2;
      case EnumWeightStatus.obesity3:
        return obesity3;
      case EnumWeightStatus.obesity4:
        return obesity4;
      case EnumWeightStatus.none:
        return none;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? severeUnderweight,
    T Function()? underweight,
    T Function()? healthyWeight,
    T Function()? overweight,
    T Function()? obesity1,
    T Function()? obesity2,
    T Function()? obesity3,
    T Function()? obesity4,
    T Function()? none,
  }) =>
      map<T>(
      severeUnderweight: severeUnderweight ?? orElse,
      underweight: underweight ?? orElse,
      healthyWeight: healthyWeight ?? orElse,
      overweight: overweight ?? orElse,
      obesity1: obesity1 ?? orElse,
      obesity2: obesity2 ?? orElse,
      obesity3: obesity3 ?? orElse,
      obesity4: obesity4 ?? orElse,
      none: none ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? severeUnderweight,
    T? underweight,
    T? healthyWeight,
    T? overweight,
    T? obesity1,
    T? obesity2,
    T? obesity3,
    T? obesity4,
    T? none,
  }) =>
      mapValue<T>(
      severeUnderweight: severeUnderweight ?? orElse,
      underweight: underweight ?? orElse,
      healthyWeight: healthyWeight ?? orElse,
      overweight: overweight ?? orElse,
      obesity1: obesity1 ?? orElse,
      obesity2: obesity2 ?? orElse,
      obesity3: obesity3 ?? orElse,
      obesity4: obesity4 ?? orElse,
      none: none ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? severeUnderweight,
    T Function()? underweight,
    T Function()? healthyWeight,
    T Function()? overweight,
    T Function()? obesity1,
    T Function()? obesity2,
    T Function()? obesity3,
    T Function()? obesity4,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        severeUnderweight: severeUnderweight,
        underweight: underweight,
        healthyWeight: healthyWeight,
        overweight: overweight,
        obesity1: obesity1,
        obesity2: obesity2,
        obesity3: obesity3,
        obesity4: obesity4,
        none: none,
      );


  T? maybeMapOrNullValue<T>({
    T? severeUnderweight,
    T? underweight,
    T? healthyWeight,
    T? overweight,
    T? obesity1,
    T? obesity2,
    T? obesity3,
    T? obesity4,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        severeUnderweight: severeUnderweight,
        underweight: underweight,
        healthyWeight: healthyWeight,
        overweight: overweight,
        obesity1: obesity1,
        obesity2: obesity2,
        obesity3: obesity3,
        obesity4: obesity4,
        none: none,
      );


  static List<String> getValues() => EnumWeightStatus.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumWeightStatus other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumWeightStatus.$name($value)';


}
