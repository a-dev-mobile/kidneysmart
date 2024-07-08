// turnGen
// https://api.belka.aventus.work/api_documentation.html#document-api-get-user-document-list-post
enum EnumDocType implements Comparable<EnumDocType> {
  /// 	will return all documents
  all('all'),

  /// will return only user uploaded files
  user('user'),

  /// will return only active loan agreements
  loan('loan'),

  /// will return agreements for old loans
  history('history'),

  /// will return references
  reference('reference');

  const EnumDocType(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDocType fromValue(
    String? value, {
    EnumDocType? fallback,
  }) {
    switch (value) {
      case 'all':
        return all;
      case 'user':
        return user;
      case 'loan':
        return loan;
      case 'history':
        return history;
      case 'reference':
        return reference;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumDocType',
            ));
    }
  }

  static EnumDocType? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'all':
        return all;
      case 'user':
        return user;
      case 'loan':
        return loan;
      case 'history':
        return history;
      case 'reference':
        return reference;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() all,
    required T Function() user,
    required T Function() loan,
    required T Function() history,
    required T Function() reference,
  }) {
    switch (this) {
      case EnumDocType.all:
        return all();
      case EnumDocType.user:
        return user();
      case EnumDocType.loan:
        return loan();
      case EnumDocType.history:
        return history();
      case EnumDocType.reference:
        return reference();
    }
  }

  T mapValue<T>({
    required T all,
    required T user,
    required T loan,
    required T history,
    required T reference,
  }) {
    switch (this) {
      case EnumDocType.all:
        return all;
      case EnumDocType.user:
        return user;
      case EnumDocType.loan:
        return loan;
      case EnumDocType.history:
        return history;
      case EnumDocType.reference:
        return reference;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? all,
    T Function()? user,
    T Function()? loan,
    T Function()? history,
    T Function()? reference,
  }) =>
      map<T>(
        all: all ?? orElse,
        user: user ?? orElse,
        loan: loan ?? orElse,
        history: history ?? orElse,
        reference: reference ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? all,
    T? user,
    T? loan,
    T? history,
    T? reference,
  }) =>
      mapValue<T>(
        all: all ?? orElse,
        user: user ?? orElse,
        loan: loan ?? orElse,
        history: history ?? orElse,
        reference: reference ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? all,
    T Function()? user,
    T Function()? loan,
    T Function()? history,
    T Function()? reference,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        all: all,
        user: user,
        loan: loan,
        history: history,
        reference: reference,
      );

  T? maybeMapOrNullValue<T>({
    T? all,
    T? user,
    T? loan,
    T? history,
    T? reference,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        all: all,
        user: user,
        loan: loan,
        history: history,
        reference: reference,
      );

  static List<String> getListValue() =>
      EnumDocType.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDocType other) => index.compareTo(other.index);
}

extension $EnumDocType on EnumDocType {
  bool get isAll => this == EnumDocType.all;
  bool get isUser => this == EnumDocType.user;
  bool get isLoan => this == EnumDocType.loan;
  bool get isHistory => this == EnumDocType.history;
  bool get isReference => this == EnumDocType.reference;
}
