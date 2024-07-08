// turngen
enum EnumCkd implements Comparable<EnumCkd> {
  one(90, 100000),
  two(60, 89),
  threeA(45, 59),
  threeB(30, 44),
  four(15, 29),
  five(0, 15),
  //
  noKnow(-2, 0),
  none(-1, 0);

  const EnumCkd(this.minValue, this.maxValue);
  final double minValue;
  final double maxValue;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumCkd fromValue(
    double? minValue, {
    EnumCkd? fallback,
  }) {
    switch (minValue?.toString()) {
      case '90':
        return one;
      case '60':
        return two;
      case '45':
        return threeA;
      case '30':
        return threeB;
      case '15':
        return four;
      case '0':
        return five;
      case '-2':
        return noKnow;
      case '-1':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              minValue,
              '',
              'Value not found in EnumCkd',
            ));
    }
  }

  T map<T>({
    required T Function() one,
    required T Function() two,
    required T Function() threeA,
    required T Function() threeB,
    required T Function() four,
    required T Function() five,
    required T Function() noKnow,
    required T Function() none,
  }) {
    switch (this) {
      case EnumCkd.one:
        return one();
      case EnumCkd.two:
        return two();
      case EnumCkd.threeA:
        return threeA();
      case EnumCkd.threeB:
        return threeB();
      case EnumCkd.four:
        return four();
      case EnumCkd.five:
        return five();
      case EnumCkd.noKnow:
        return noKnow();
      case EnumCkd.none:
        return none();
    }
  }

  T mapValue<T>({
    required T one,
    required T two,
    required T threeA,
    required T threeB,
    required T four,
    required T five,
    required T noKnow,
    required T none,
  }) {
    switch (this) {
      case EnumCkd.one:
        return one;
      case EnumCkd.two:
        return two;
      case EnumCkd.threeA:
        return threeA;
      case EnumCkd.threeB:
        return threeB;
      case EnumCkd.four:
        return four;
      case EnumCkd.five:
        return five;
      case EnumCkd.noKnow:
        return noKnow;
      case EnumCkd.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? one,
    T Function()? two,
    T Function()? threeA,
    T Function()? threeB,
    T Function()? four,
    T Function()? five,
    T Function()? noKnow,
    T Function()? none,
  }) =>
      map<T>(
        one: one ?? orElse,
        two: two ?? orElse,
        threeA: threeA ?? orElse,
        threeB: threeB ?? orElse,
        four: four ?? orElse,
        five: five ?? orElse,
        noKnow: noKnow ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? one,
    T? two,
    T? threeA,
    T? threeB,
    T? four,
    T? five,
    T? noKnow,
    T? none,
  }) =>
      mapValue<T>(
        one: one ?? orElse,
        two: two ?? orElse,
        threeA: threeA ?? orElse,
        threeB: threeB ?? orElse,
        four: four ?? orElse,
        five: five ?? orElse,
        noKnow: noKnow ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? one,
    T Function()? two,
    T Function()? threeA,
    T Function()? threeB,
    T Function()? four,
    T Function()? five,
    T Function()? noKnow,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        one: one,
        two: two,
        threeA: threeA,
        threeB: threeB,
        four: four,
        five: five,
        noKnow: noKnow,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? one,
    T? two,
    T? threeA,
    T? threeB,
    T? four,
    T? five,
    T? noKnow,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        one: one,
        two: two,
        threeA: threeA,
        threeB: threeB,
        four: four,
        five: five,
        noKnow: noKnow,
        none: none,
      );

  static List<double> getValues() =>
      EnumCkd.values.map((e) => e.minValue).toList();

  @override
  int compareTo(EnumCkd other) => index.compareTo(other.index);
}

extension $EnumCkd on EnumCkd {
  bool get one => this == EnumCkd.one;
  bool get two => this == EnumCkd.two;
  bool get threeA => this == EnumCkd.threeA;
  bool get threeB => this == EnumCkd.threeB;
  bool get four => this == EnumCkd.four;
  bool get five => this == EnumCkd.five;
  bool get noKnow => this == EnumCkd.noKnow;
  bool get none => this == EnumCkd.none;
}
