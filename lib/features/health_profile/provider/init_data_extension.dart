// ignore_for_file: constant_identifier_names

part of 'health_profile_provider.dart';

extension _InitDataExtension on HealthProfileNotifier {
  static const _MIN_AGE = 2;
  static const _MAX_AGE = 150;
  static const _MIN_HEIGHT = 50;
  static const _MAX_HEIGHT = 220;

  List<String> _initYears() {
    final listYear = <String>[];
    final yearStart = DateTime.now().year - _MAX_AGE;
    final yearEnd = DateTime.now().year - _MIN_AGE;
    for (var i = yearEnd; i > yearStart; i--) {
      listYear.add(i.toString());
    }

    return listYear;
  }

  List<String> _initDayMonth({required int start, required int end}) {
    final list = <String>[];
    for (var i = start; i <= end; i++) {
      if (i < 10) {
        list.add('0$i');
        continue;
      }

      list.add(i.toString());
    }

    return list;
  }

  List<String> _initHeight() {
    final listHeight = <String>[];
    for (var i = _MAX_HEIGHT; i > _MIN_HEIGHT; i--) {
      listHeight.add(i.toString());
    }

    return listHeight;
  }

  List<CkdItemModel> get _initCkdStage {
    return <CkdItemModel>[
      const CkdItemModel(
        enumCkd: EnumCkd.one,
        value: '1',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.two,
        value: '2',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.threeA,
        value: '3a',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.threeB,
        value: '3b',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.four,
        value: '4',
      ),
      const CkdItemModel(
        enumCkd: EnumCkd.five,
        value: '5',
      ),
      CkdItemModel(
        enumCkd: EnumCkd.calculate,
        value: _l.calculate,
      ),
    ];
  }

  List<DailyDiuresisItemModel> get _initDailyDiuresis {
    return <DailyDiuresisItemModel>[
      const DailyDiuresisItemModel(
        enumDailyDiuresis: EnumDailyDiuresis.no,
        value: 'Отсутствует',
      ),
      const DailyDiuresisItemModel(
        enumDailyDiuresis: EnumDailyDiuresis.normal,
        value: 'Нормальный',
      ),
      const DailyDiuresisItemModel(
        enumDailyDiuresis: EnumDailyDiuresis.enterValue,
        value: 'Ввести значение',
      ),
    ];
  }

  List<GenderItemModel> get _initGender {
    return <GenderItemModel>[
      GenderItemModel(enumGender: EnumGender.male, value: _l.male),
      GenderItemModel(enumGender: EnumGender.female, value: _l.female),
    ];
  }

  List<DialysisItemModel> get _initDialysis {
    return <DialysisItemModel>[
      const DialysisItemModel(
        enumDialysis: EnumDialysis.homodialysis,
        value: 'Гомодиализ',
      ),
      const DialysisItemModel(
        enumDialysis: EnumDialysis.perinatal,
        value: 'Перенатальный',
      ),
      DialysisItemModel(enumDialysis: EnumDialysis.no, value: _l.no),
    ];
  }

  List<HypertensionItemModel> get _initHypertension {
    return <HypertensionItemModel>[
      HypertensionItemModel(
        enumHypertension: EnumHypertension.yes,
        value: _l.yes_caps,
      ),
      HypertensionItemModel(
        enumHypertension: EnumHypertension.no,
        value: _l.no_caps,
      ),
    ];
  }
}
