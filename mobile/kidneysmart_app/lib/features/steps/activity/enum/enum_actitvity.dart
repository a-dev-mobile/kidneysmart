enum EnumActivity implements Comparable<EnumActivity> {
// light
  slightlyActive_1('slightlyActive'),
  moderatelyActive_2('moderatelyActive'),
  active_3('active'),
  veryActive_4('veryActive'),
  none('none');

  const EnumActivity(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumActivity fromValue(
    String? value, {
    EnumActivity? fallback,
  }) {
    switch (value) {
      case 'slightlyActive':
        return slightlyActive_1;
      case 'moderatelyActive':
        return moderatelyActive_2;
      case 'active':
        return active_3;
      case 'veryActive':
        return veryActive_4;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumActivity',
            ));
    }
  }

  T map<T>({
    required T Function() slightlyActive_1,
    required T Function() moderatelyActive_2,
    required T Function() active_3,
    required T Function() veryActive_4,
    required T Function() none,
  }) {
    switch (this) {
      case EnumActivity.slightlyActive_1:
        return slightlyActive_1();
      case EnumActivity.moderatelyActive_2:
        return moderatelyActive_2();
      case EnumActivity.active_3:
        return active_3();
      case EnumActivity.veryActive_4:
        return veryActive_4();
      case EnumActivity.none:
        return none();
    }
  }

  T mapValue<T>({
    required T slightlyActive_1,
    required T moderatelyActive_2,
    required T active_3,
    required T veryActive_4,
    required T none,
  }) {
    switch (this) {
      case EnumActivity.slightlyActive_1:
        return slightlyActive_1;
      case EnumActivity.moderatelyActive_2:
        return moderatelyActive_2;
      case EnumActivity.active_3:
        return active_3;
      case EnumActivity.veryActive_4:
        return veryActive_4;
      case EnumActivity.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? slightlyActive_1,
    T Function()? moderatelyActive_2,
    T Function()? active_3,
    T Function()? veryActive_4,
    T Function()? none,
  }) =>
      map<T>(
        slightlyActive_1: slightlyActive_1 ?? orElse,
        moderatelyActive_2: moderatelyActive_2 ?? orElse,
        active_3: active_3 ?? orElse,
        veryActive_4: veryActive_4 ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? slightlyActive_1,
    T? moderatelyActive_2,
    T? active_3,
    T? veryActive_4,
    T? none,
  }) =>
      mapValue<T>(
        slightlyActive_1: slightlyActive_1 ?? orElse,
        moderatelyActive_2: moderatelyActive_2 ?? orElse,
        active_3: active_3 ?? orElse,
        veryActive_4: veryActive_4 ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? slightlyActive_1,
    T Function()? moderatelyActive_2,
    T Function()? active_3,
    T Function()? veryActive_4,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        slightlyActive_1: slightlyActive_1,
        moderatelyActive_2: moderatelyActive_2,
        active_3: active_3,
        veryActive_4: veryActive_4,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? slightlyActive_1,
    T? moderatelyActive_2,
    T? active_3,
    T? veryActive_4,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        slightlyActive_1: slightlyActive_1,
        moderatelyActive_2: moderatelyActive_2,
        active_3: active_3,
        veryActive_4: veryActive_4,
        none: none,
      );

  static List<String> getValues() =>
      EnumActivity.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumActivity other) => index.compareTo(other.index);
}

extension $EnumActivity on EnumActivity {
  bool get slightlyActive_1 => this == EnumActivity.slightlyActive_1;
  bool get moderatelyActive_2 => this == EnumActivity.moderatelyActive_2;
  bool get active_3 => this == EnumActivity.active_3;
  bool get veryActive_4 => this == EnumActivity.veryActive_4;
  bool get none => this == EnumActivity.none;
}
