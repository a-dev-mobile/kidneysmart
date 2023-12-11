// turnGen

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

enum EnumProject implements Comparable<EnumProject> {
  prod_C7(
    api: 'https://api.credit7.ru/',
    url: 'https://credit7.ru/',
    name: 'C7 Prod',
  ),
  prod_ND(
    api: 'https://api.nadodeneg.ru/',
    url: 'https://nadodeneg.ru/',
    name: 'ND Prod',
  ),
  prod_BLK(
    api: 'https://api.belkacredit.ru/',
    url: 'https://belkacredit.ru/',
    name: 'BLK Prod',
  ),
  stage_1_C7(
    api: 'https://api1.credit7.online.aventus.work/',
    url: 'https://c7-api1-ru-credit7.wp.mendep.ru/',
    name: 'C7 stage 1',
  ),
  stage_2_C7(
    api: 'https://api2.credit7.online.aventus.work/',
    url: 'https://c7-api2-ru-credit7.wp.mendep.ru/',
    name: 'C7 mob stage 2',
  ),
  stage_0_ND(
    api: 'https://api0.nd.aventus.work/',
    url: 'https://nd-api0-ru-nadodeneg.wp.mendep.ru/',
    name: 'ND stage 0',
  ),
  stage_1_ND(
    api: 'https://api1.nd.aventus.work/',
    url: 'https://nd-api1-ru-nadodeneg.wp.mendep.ru/',
    name: 'ND stage 1',
  ),
  stage_2_ND(
    api: 'https://api2.nd.aventus.work/',
    url: 'https://nd-api2-ru-nadodeneg.wp.mendep.ru/',
    name: 'ND stage 2',
  ),
  stage_3_ND(
    api: 'https://api3.nd.aventus.work/',
    url: 'https://nd-api3-ru-nadodeneg.wp.mendep.ru/',
    name: 'ND mob stage 3',
  ),
  stage_0_BLK(
    api: 'https://api0.belka.aventus.work/',
    url: 'https://bc-api0-ru-belkacredit.wp.mendep.ru/',
    name: 'BLK mob stage 0',
  ),
  stage_4_BLK(
    api: 'https://api4.belka.aventus.work/',
    url: 'https://bc-api4-ru-belkacredit.wp.mendep.ru/',
    name: 'BLK stage 4',
  ),
  stage_5_BLK(
    api: 'https://api5.belka.aventus.work/',
    url: 'https://bc-api5-ru-belkacredit.wp.mendep.ru/',
    name: 'BLK stage 5',
  );

  const EnumProject({required this.api, required this.url, required this.name});
  final String api;
  final String url;
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumProject fromApi(
    String? api, {
    EnumProject? fallback,
  }) {
    switch (api) {
      case 'https://api.credit7.ru/':
        return prod_C7;
      case 'https://api.nadodeneg.ru/':
        return prod_ND;
      case 'https://api.belkacredit.ru/':
        return prod_BLK;
      case 'https://api1.credit7.online.aventus.work/':
        return stage_1_C7;
      case 'https://api2.credit7.online.aventus.work/':
        return stage_2_C7;
      case 'https://api0.nd.aventus.work/':
        return stage_0_ND;
      case 'https://api1.nd.aventus.work/':
        return stage_1_ND;
      case 'https://api2.nd.aventus.work/':
        return stage_2_ND;
      case 'https://api3.nd.aventus.work/':
        return stage_3_ND;
      case 'https://api0.belka.aventus.work/':
        return stage_0_BLK;
      case 'https://api4.belka.aventus.work/':
        return stage_4_BLK;
      case 'https://api5.belka.aventus.work/':
        return stage_5_BLK;
      default:
        return fallback ??
            (throw ArgumentError.value(
              api,
              'api',
              'Value not found in EnumProject',
            ));
    }
  }

  static EnumProject fromUrl(
    String? url, {
    EnumProject? fallback,
  }) {
    switch (url) {
      case 'https://credit7.ru/':
        return prod_C7;
      case 'https://nadodeneg.ru/':
        return prod_ND;
      case 'https://belkacredit.ru/':
        return prod_BLK;
      case 'https://c7-api1-ru-credit7.wp.mendep.ru/':
        return stage_1_C7;
      case 'https://c7-api2-ru-credit7.wp.mendep.ru/':
        return stage_2_C7;
      case 'https://nd-api0-ru-nadodeneg.wp.mendep.ru/':
        return stage_0_ND;
      case 'https://nd-api1-ru-nadodeneg.wp.mendep.ru/':
        return stage_1_ND;
      case 'https://nd-api2-ru-nadodeneg.wp.mendep.ru/':
        return stage_2_ND;
      case 'https://nd-api3-ru-nadodeneg.wp.mendep.ru/':
        return stage_3_ND;
      case 'https://bc-api0-ru-belkacredit.wp.mendep.ru/':
        return stage_0_BLK;
      case 'https://bc-api4-ru-belkacredit.wp.mendep.ru/':
        return stage_4_BLK;
      case 'https://bc-api5-ru-belkacredit.wp.mendep.ru/':
        return stage_5_BLK;
      default:
        return fallback ??
            (throw ArgumentError.value(
              url,
              'url',
              'Value not found in EnumProject',
            ));
    }
  }

  static EnumProject fromName(
    String? name, {
    EnumProject? fallback,
  }) {
    switch (name) {
      case 'C7 Prod':
        return prod_C7;
      case 'ND Prod':
        return prod_ND;
      case 'BLK Prod':
        return prod_BLK;
      case 'C7 stage 1':
        return stage_1_C7;
      case 'C7 mob stage 2':
        return stage_2_C7;
      case 'ND stage 0':
        return stage_0_ND;
      case 'ND stage 1':
        return stage_1_ND;
      case 'ND stage 2':
        return stage_2_ND;
      case 'ND mob stage 3':
        return stage_3_ND;
      case 'BLK mob stage 0':
        return stage_0_BLK;
      case 'BLK stage 4':
        return stage_4_BLK;
      case 'BLK stage 5':
        return stage_5_BLK;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumProject',
            ));
    }
  }

  static EnumProject? fromApiOrNull(
    String? api,
  ) {
    switch (api) {
      case 'https://api.credit7.ru/':
        return prod_C7;
      case 'https://api.nadodeneg.ru/':
        return prod_ND;
      case 'https://api.belkacredit.ru/':
        return prod_BLK;
      case 'https://api1.credit7.online.aventus.work/':
        return stage_1_C7;
      case 'https://api2.credit7.online.aventus.work/':
        return stage_2_C7;
      case 'https://api0.nd.aventus.work/':
        return stage_0_ND;
      case 'https://api1.nd.aventus.work/':
        return stage_1_ND;
      case 'https://api2.nd.aventus.work/':
        return stage_2_ND;
      case 'https://api3.nd.aventus.work/':
        return stage_3_ND;
      case 'https://api0.belka.aventus.work/':
        return stage_0_BLK;
      case 'https://api4.belka.aventus.work/':
        return stage_4_BLK;
      case 'https://api5.belka.aventus.work/':
        return stage_5_BLK;
      default:
        return null;
    }
  }

  static EnumProject? fromUrlOrNull(
    String? url,
  ) {
    switch (url) {
      case 'https://credit7.ru/':
        return prod_C7;
      case 'https://nadodeneg.ru/':
        return prod_ND;
      case 'https://belkacredit.ru/':
        return prod_BLK;
      case 'https://c7-api1-ru-credit7.wp.mendep.ru/':
        return stage_1_C7;
      case 'https://c7-api2-ru-credit7.wp.mendep.ru/':
        return stage_2_C7;
      case 'https://nd-api0-ru-nadodeneg.wp.mendep.ru/':
        return stage_0_ND;
      case 'https://nd-api1-ru-nadodeneg.wp.mendep.ru/':
        return stage_1_ND;
      case 'https://nd-api2-ru-nadodeneg.wp.mendep.ru/':
        return stage_2_ND;
      case 'https://nd-api3-ru-nadodeneg.wp.mendep.ru/':
        return stage_3_ND;
      case 'https://bc-api0-ru-belkacredit.wp.mendep.ru/':
        return stage_0_BLK;
      case 'https://bc-api4-ru-belkacredit.wp.mendep.ru/':
        return stage_4_BLK;
      case 'https://bc-api5-ru-belkacredit.wp.mendep.ru/':
        return stage_5_BLK;
      default:
        return null;
    }
  }

  static EnumProject? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'C7 Prod':
        return prod_C7;
      case 'ND Prod':
        return prod_ND;
      case 'BLK Prod':
        return prod_BLK;
      case 'C7 stage 1':
        return stage_1_C7;
      case 'C7 mob stage 2':
        return stage_2_C7;
      case 'ND stage 0':
        return stage_0_ND;
      case 'ND stage 1':
        return stage_1_ND;
      case 'ND stage 2':
        return stage_2_ND;
      case 'ND mob stage 3':
        return stage_3_ND;
      case 'BLK mob stage 0':
        return stage_0_BLK;
      case 'BLK stage 4':
        return stage_4_BLK;
      case 'BLK stage 5':
        return stage_5_BLK;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() prod_C7,
    required T Function() prod_ND,
    required T Function() prod_BLK,
    required T Function() stage_1_C7,
    required T Function() stage_2_C7,
    required T Function() stage_0_ND,
    required T Function() stage_1_ND,
    required T Function() stage_2_ND,
    required T Function() stage_3_ND,
    required T Function() stage_0_BLK,
    required T Function() stage_4_BLK,
    required T Function() stage_5_BLK,
  }) {
    switch (this) {
      case EnumProject.prod_C7:
        return prod_C7();
      case EnumProject.prod_ND:
        return prod_ND();
      case EnumProject.prod_BLK:
        return prod_BLK();
      case EnumProject.stage_1_C7:
        return stage_1_C7();
      case EnumProject.stage_2_C7:
        return stage_2_C7();
      case EnumProject.stage_0_ND:
        return stage_0_ND();
      case EnumProject.stage_1_ND:
        return stage_1_ND();
      case EnumProject.stage_2_ND:
        return stage_2_ND();
      case EnumProject.stage_3_ND:
        return stage_3_ND();
      case EnumProject.stage_0_BLK:
        return stage_0_BLK();
      case EnumProject.stage_4_BLK:
        return stage_4_BLK();
      case EnumProject.stage_5_BLK:
        return stage_5_BLK();
    }
  }

  T mapValue<T>({
    required T prod_C7,
    required T prod_ND,
    required T prod_BLK,
    required T stage_1_C7,
    required T stage_2_C7,
    required T stage_0_ND,
    required T stage_1_ND,
    required T stage_2_ND,
    required T stage_3_ND,
    required T stage_0_BLK,
    required T stage_4_BLK,
    required T stage_5_BLK,
  }) {
    switch (this) {
      case EnumProject.prod_C7:
        return prod_C7;
      case EnumProject.prod_ND:
        return prod_ND;
      case EnumProject.prod_BLK:
        return prod_BLK;
      case EnumProject.stage_1_C7:
        return stage_1_C7;
      case EnumProject.stage_2_C7:
        return stage_2_C7;
      case EnumProject.stage_0_ND:
        return stage_0_ND;
      case EnumProject.stage_1_ND:
        return stage_1_ND;
      case EnumProject.stage_2_ND:
        return stage_2_ND;
      case EnumProject.stage_3_ND:
        return stage_3_ND;
      case EnumProject.stage_0_BLK:
        return stage_0_BLK;
      case EnumProject.stage_4_BLK:
        return stage_4_BLK;
      case EnumProject.stage_5_BLK:
        return stage_5_BLK;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? prod_C7,
    T Function()? prod_ND,
    T Function()? prod_BLK,
    T Function()? stage_1_C7,
    T Function()? stage_2_C7,
    T Function()? stage_0_ND,
    T Function()? stage_1_ND,
    T Function()? stage_2_ND,
    T Function()? stage_3_ND,
    T Function()? stage_0_BLK,
    T Function()? stage_4_BLK,
    T Function()? stage_5_BLK,
  }) =>
      map<T>(
        prod_C7: prod_C7 ?? orElse,
        prod_ND: prod_ND ?? orElse,
        prod_BLK: prod_BLK ?? orElse,
        stage_1_C7: stage_1_C7 ?? orElse,
        stage_2_C7: stage_2_C7 ?? orElse,
        stage_0_ND: stage_0_ND ?? orElse,
        stage_1_ND: stage_1_ND ?? orElse,
        stage_2_ND: stage_2_ND ?? orElse,
        stage_3_ND: stage_3_ND ?? orElse,
        stage_0_BLK: stage_0_BLK ?? orElse,
        stage_4_BLK: stage_4_BLK ?? orElse,
        stage_5_BLK: stage_5_BLK ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? prod_C7,
    T? prod_ND,
    T? prod_BLK,
    T? stage_1_C7,
    T? stage_2_C7,
    T? stage_0_ND,
    T? stage_1_ND,
    T? stage_2_ND,
    T? stage_3_ND,
    T? stage_0_BLK,
    T? stage_4_BLK,
    T? stage_5_BLK,
  }) =>
      mapValue<T>(
        prod_C7: prod_C7 ?? orElse,
        prod_ND: prod_ND ?? orElse,
        prod_BLK: prod_BLK ?? orElse,
        stage_1_C7: stage_1_C7 ?? orElse,
        stage_2_C7: stage_2_C7 ?? orElse,
        stage_0_ND: stage_0_ND ?? orElse,
        stage_1_ND: stage_1_ND ?? orElse,
        stage_2_ND: stage_2_ND ?? orElse,
        stage_3_ND: stage_3_ND ?? orElse,
        stage_0_BLK: stage_0_BLK ?? orElse,
        stage_4_BLK: stage_4_BLK ?? orElse,
        stage_5_BLK: stage_5_BLK ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? prod_C7,
    T Function()? prod_ND,
    T Function()? prod_BLK,
    T Function()? stage_1_C7,
    T Function()? stage_2_C7,
    T Function()? stage_0_ND,
    T Function()? stage_1_ND,
    T Function()? stage_2_ND,
    T Function()? stage_3_ND,
    T Function()? stage_0_BLK,
    T Function()? stage_4_BLK,
    T Function()? stage_5_BLK,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        prod_C7: prod_C7,
        prod_ND: prod_ND,
        prod_BLK: prod_BLK,
        stage_1_C7: stage_1_C7,
        stage_2_C7: stage_2_C7,
        stage_0_ND: stage_0_ND,
        stage_1_ND: stage_1_ND,
        stage_2_ND: stage_2_ND,
        stage_3_ND: stage_3_ND,
        stage_0_BLK: stage_0_BLK,
        stage_4_BLK: stage_4_BLK,
        stage_5_BLK: stage_5_BLK,
      );

  T? maybeMapOrNullValue<T>({
    T? prod_C7,
    T? prod_ND,
    T? prod_BLK,
    T? stage_1_C7,
    T? stage_2_C7,
    T? stage_0_ND,
    T? stage_1_ND,
    T? stage_2_ND,
    T? stage_3_ND,
    T? stage_0_BLK,
    T? stage_4_BLK,
    T? stage_5_BLK,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        prod_C7: prod_C7,
        prod_ND: prod_ND,
        prod_BLK: prod_BLK,
        stage_1_C7: stage_1_C7,
        stage_2_C7: stage_2_C7,
        stage_0_ND: stage_0_ND,
        stage_1_ND: stage_1_ND,
        stage_2_ND: stage_2_ND,
        stage_3_ND: stage_3_ND,
        stage_0_BLK: stage_0_BLK,
        stage_4_BLK: stage_4_BLK,
        stage_5_BLK: stage_5_BLK,
      );

  static List<String> getListApi() =>
      EnumProject.values.map((e) => e.api).toList();

  static List<String> getListUrl() =>
      EnumProject.values.map((e) => e.url).toList();

  static List<String> getListName() =>
      EnumProject.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumProject other) => index.compareTo(other.index);
}

extension $EnumProject on EnumProject {
  bool get is_prod_C7 => this == EnumProject.prod_C7;
  bool get is_prod_ND => this == EnumProject.prod_ND;
  bool get is_prod_BLK => this == EnumProject.prod_BLK;
  bool get is_stage_1_C7 => this == EnumProject.stage_1_C7;
  bool get is_stage_2_C7 => this == EnumProject.stage_2_C7;
  bool get is_stage_0_ND => this == EnumProject.stage_0_ND;
  bool get is_stage_1_ND => this == EnumProject.stage_1_ND;
  bool get is_stage_2_ND => this == EnumProject.stage_2_ND;
  bool get is_stage_3_ND => this == EnumProject.stage_3_ND;
  bool get is_stage_0_BLK => this == EnumProject.stage_0_BLK;
  bool get is_stage_4_BLK => this == EnumProject.stage_4_BLK;
  bool get is_stage_5_BLK => this == EnumProject.stage_5_BLK;
}
