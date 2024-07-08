
// turnGen
// ignore_for_file: constant_identifier_names, non_constant_identifier_names

enum EnumScheduleStatus implements Comparable<EnumScheduleStatus> {
  active('status.schedule.active'),
  done('status.schedule.done'),
  overdue('status.schedule.overdue'),
  payed('status.schedule.payed'),
  error('error');

  const EnumScheduleStatus(
    this.value,
  );

  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumScheduleStatus fromValue(String? value, {EnumScheduleStatus? fallback,}) {
    switch (value) {
case 'status.schedule.active':
return active;
case 'status.schedule.done':
return done;
case 'status.schedule.overdue':
return overdue;
case 'status.schedule.payed':
return payed;
case 'error':
return error;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, 'value', 'Value not found in EnumScheduleStatus',));
    }
  }

  static EnumScheduleStatus? fromValueOrNull(String? value,) {
    switch (value) {
case 'status.schedule.active':
return active;
case 'status.schedule.done':
return done;
case 'status.schedule.overdue':
return overdue;
case 'status.schedule.payed':
return payed;
case 'error':
return error;
      default:
        return null;
    }
  }


  T map<T>({
    required T Function() active,
    required T Function() done,
    required T Function() overdue,
    required T Function() payed,
    required T Function() error,
  }) {
    switch (this) {
      case EnumScheduleStatus.active:
        return active();
      case EnumScheduleStatus.done:
        return done();
      case EnumScheduleStatus.overdue:
        return overdue();
      case EnumScheduleStatus.payed:
        return payed();
      case EnumScheduleStatus.error:
        return error();
    }
  }


  T mapValue<T>({
    required T active,
    required T done,
    required T overdue,
    required T payed,
    required T error,
  }) {
    switch (this) {
      case EnumScheduleStatus.active:
        return active;
      case EnumScheduleStatus.done:
        return done;
      case EnumScheduleStatus.overdue:
        return overdue;
      case EnumScheduleStatus.payed:
        return payed;
      case EnumScheduleStatus.error:
        return error;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? active,
    T Function()? done,
    T Function()? overdue,
    T Function()? payed,
    T Function()? error,
  }) =>
      map<T>(
      active: active ?? orElse,
      done: done ?? orElse,
      overdue: overdue ?? orElse,
      payed: payed ?? orElse,
      error: error ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? active,
    T? done,
    T? overdue,
    T? payed,
    T? error,
  }) =>
      mapValue<T>(
      active: active ?? orElse,
      done: done ?? orElse,
      overdue: overdue ?? orElse,
      payed: payed ?? orElse,
      error: error ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? active,
    T Function()? done,
    T Function()? overdue,
    T Function()? payed,
    T Function()? error,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        active: active,
        done: done,
        overdue: overdue,
        payed: payed,
        error: error,
      );


  T? maybeMapOrNullValue<T>({
    T? active,
    T? done,
    T? overdue,
    T? payed,
    T? error,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        active: active,
        done: done,
        overdue: overdue,
        payed: payed,
        error: error,
      );


  static List<String> getListValue() => EnumScheduleStatus.values.map((e) => e.value).toList();


  @override
  int compareTo(EnumScheduleStatus other) => index.compareTo(other.index);

 


}
extension $EnumScheduleStatus on EnumScheduleStatus {
bool get isActive => this == EnumScheduleStatus.active;
bool get isDone => this == EnumScheduleStatus.done;
bool get isOverdue => this == EnumScheduleStatus.overdue;
bool get isPayed => this == EnumScheduleStatus.payed;
bool get isError => this == EnumScheduleStatus.error;
}

