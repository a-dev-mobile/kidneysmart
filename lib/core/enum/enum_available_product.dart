enum EnumAvailableProduct implements Comparable<EnumAvailableProduct> {
  payday(1, 'payday'),
  installment(2, 'installment');

  const EnumAvailableProduct(this.id, this.type);
  final int id;
  final String type;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumAvailableProduct fromId(
    int? id, {
    EnumAvailableProduct? fallback,
  }) {
    switch (id) {
      case 1:
        return payday;
      case 2:
        return installment;
      default:
        return fallback ??
            (throw ArgumentError.value(
              id,
              'id',
              'Value not found in EnumAvailableProduct',
            ));
    }
  }

  static EnumAvailableProduct fromType(
    String? type, {
    EnumAvailableProduct? fallback,
  }) {
    switch (type) {
      case 'payday':
        return payday;
      case 'installment':
        return installment;
      default:
        return fallback ??
            (throw ArgumentError.value(
              type,
              'type',
              'Value not found in EnumAvailableProduct',
            ));
    }
  }

  static EnumAvailableProduct? fromIdOrNull(
    int? id,
  ) {
    switch (id) {
      case 1:
        return payday;
      case 2:
        return installment;
      default:
        return null;
    }
  }

  static EnumAvailableProduct? fromTypeOrNull(
    String? type,
  ) {
    switch (type) {
      case 'payday':
        return payday;
      case 'installment':
        return installment;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() payday,
    required T Function() installment,
  }) {
    switch (this) {
      case EnumAvailableProduct.payday:
        return payday();
      case EnumAvailableProduct.installment:
        return installment();
    }
  }

  T mapValue<T>({
    required T payday,
    required T installment,
  }) {
    switch (this) {
      case EnumAvailableProduct.payday:
        return payday;
      case EnumAvailableProduct.installment:
        return installment;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? payday,
    T Function()? installment,
  }) =>
      map<T>(
        payday: payday ?? orElse,
        installment: installment ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? payday,
    T? installment,
  }) =>
      mapValue<T>(
        payday: payday ?? orElse,
        installment: installment ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? payday,
    T Function()? installment,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        payday: payday,
        installment: installment,
      );

  T? maybeMapOrNullValue<T>({
    T? payday,
    T? installment,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        payday: payday,
        installment: installment,
      );

  static List<int> getListId() =>
      EnumAvailableProduct.values.map((e) => e.id).toList();

  static List<String> getListType() =>
      EnumAvailableProduct.values.map((e) => e.type).toList();

  @override
  int compareTo(EnumAvailableProduct other) => index.compareTo(other.index);
}

extension $EnumAvailableProduct on EnumAvailableProduct {
  bool get isPayday => this == EnumAvailableProduct.payday;
  bool get isInstallment => this == EnumAvailableProduct.installment;
}
