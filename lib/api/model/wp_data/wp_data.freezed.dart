// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wp_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WpData _$WpDataFromJson(Map<String, dynamic> json) {
  return _WpData.fromJson(json);
}

/// @nodoc
mixin _$WpData {
  @JsonKey(name: 'calc_pdl_params')
  List<CalcPdlParams>? get calcPdlParams => throw _privateConstructorUsedError;
  @JsonKey(name: 'docs')
  Docs? get docs => throw _privateConstructorUsedError;
  @JsonKey(name: 'calc')
  Calc? get calc => throw _privateConstructorUsedError;
  @JsonKey(name: 'acf')
  Acf? get acf => throw _privateConstructorUsedError;
  @JsonKey(name: 'footer_menu_title')
  String? get footerMenuTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'header_menu')
  List<HeaderMenu>? get headerMenu => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_menu')
  List<MobileMenu>? get mobileMenu => throw _privateConstructorUsedError;
  @JsonKey(name: 'footer_menu')
  List<FooterMenu>? get footerMenu => throw _privateConstructorUsedError;
  @JsonKey(name: 'footer_menu_2')
  List<FooterMenu2>? get footerMenu2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WpDataCopyWith<WpData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WpDataCopyWith<$Res> {
  factory $WpDataCopyWith(WpData value, $Res Function(WpData) then) =
      _$WpDataCopyWithImpl<$Res, WpData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'calc_pdl_params') List<CalcPdlParams>? calcPdlParams,
      @JsonKey(name: 'docs') Docs? docs,
      @JsonKey(name: 'calc') Calc? calc,
      @JsonKey(name: 'acf') Acf? acf,
      @JsonKey(name: 'footer_menu_title') String? footerMenuTitle,
      @JsonKey(name: 'header_menu') List<HeaderMenu>? headerMenu,
      @JsonKey(name: 'mobile_menu') List<MobileMenu>? mobileMenu,
      @JsonKey(name: 'footer_menu') List<FooterMenu>? footerMenu,
      @JsonKey(name: 'footer_menu_2') List<FooterMenu2>? footerMenu2});

  $DocsCopyWith<$Res>? get docs;
  $CalcCopyWith<$Res>? get calc;
  $AcfCopyWith<$Res>? get acf;
}

/// @nodoc
class _$WpDataCopyWithImpl<$Res, $Val extends WpData>
    implements $WpDataCopyWith<$Res> {
  _$WpDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calcPdlParams = freezed,
    Object? docs = freezed,
    Object? calc = freezed,
    Object? acf = freezed,
    Object? footerMenuTitle = freezed,
    Object? headerMenu = freezed,
    Object? mobileMenu = freezed,
    Object? footerMenu = freezed,
    Object? footerMenu2 = freezed,
  }) {
    return _then(_value.copyWith(
      calcPdlParams: freezed == calcPdlParams
          ? _value.calcPdlParams
          : calcPdlParams // ignore: cast_nullable_to_non_nullable
              as List<CalcPdlParams>?,
      docs: freezed == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as Docs?,
      calc: freezed == calc
          ? _value.calc
          : calc // ignore: cast_nullable_to_non_nullable
              as Calc?,
      acf: freezed == acf
          ? _value.acf
          : acf // ignore: cast_nullable_to_non_nullable
              as Acf?,
      footerMenuTitle: freezed == footerMenuTitle
          ? _value.footerMenuTitle
          : footerMenuTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      headerMenu: freezed == headerMenu
          ? _value.headerMenu
          : headerMenu // ignore: cast_nullable_to_non_nullable
              as List<HeaderMenu>?,
      mobileMenu: freezed == mobileMenu
          ? _value.mobileMenu
          : mobileMenu // ignore: cast_nullable_to_non_nullable
              as List<MobileMenu>?,
      footerMenu: freezed == footerMenu
          ? _value.footerMenu
          : footerMenu // ignore: cast_nullable_to_non_nullable
              as List<FooterMenu>?,
      footerMenu2: freezed == footerMenu2
          ? _value.footerMenu2
          : footerMenu2 // ignore: cast_nullable_to_non_nullable
              as List<FooterMenu2>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocsCopyWith<$Res>? get docs {
    if (_value.docs == null) {
      return null;
    }

    return $DocsCopyWith<$Res>(_value.docs!, (value) {
      return _then(_value.copyWith(docs: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CalcCopyWith<$Res>? get calc {
    if (_value.calc == null) {
      return null;
    }

    return $CalcCopyWith<$Res>(_value.calc!, (value) {
      return _then(_value.copyWith(calc: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AcfCopyWith<$Res>? get acf {
    if (_value.acf == null) {
      return null;
    }

    return $AcfCopyWith<$Res>(_value.acf!, (value) {
      return _then(_value.copyWith(acf: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WpDataImplCopyWith<$Res> implements $WpDataCopyWith<$Res> {
  factory _$$WpDataImplCopyWith(
          _$WpDataImpl value, $Res Function(_$WpDataImpl) then) =
      __$$WpDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'calc_pdl_params') List<CalcPdlParams>? calcPdlParams,
      @JsonKey(name: 'docs') Docs? docs,
      @JsonKey(name: 'calc') Calc? calc,
      @JsonKey(name: 'acf') Acf? acf,
      @JsonKey(name: 'footer_menu_title') String? footerMenuTitle,
      @JsonKey(name: 'header_menu') List<HeaderMenu>? headerMenu,
      @JsonKey(name: 'mobile_menu') List<MobileMenu>? mobileMenu,
      @JsonKey(name: 'footer_menu') List<FooterMenu>? footerMenu,
      @JsonKey(name: 'footer_menu_2') List<FooterMenu2>? footerMenu2});

  @override
  $DocsCopyWith<$Res>? get docs;
  @override
  $CalcCopyWith<$Res>? get calc;
  @override
  $AcfCopyWith<$Res>? get acf;
}

/// @nodoc
class __$$WpDataImplCopyWithImpl<$Res>
    extends _$WpDataCopyWithImpl<$Res, _$WpDataImpl>
    implements _$$WpDataImplCopyWith<$Res> {
  __$$WpDataImplCopyWithImpl(
      _$WpDataImpl _value, $Res Function(_$WpDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calcPdlParams = freezed,
    Object? docs = freezed,
    Object? calc = freezed,
    Object? acf = freezed,
    Object? footerMenuTitle = freezed,
    Object? headerMenu = freezed,
    Object? mobileMenu = freezed,
    Object? footerMenu = freezed,
    Object? footerMenu2 = freezed,
  }) {
    return _then(_$WpDataImpl(
      calcPdlParams: freezed == calcPdlParams
          ? _value._calcPdlParams
          : calcPdlParams // ignore: cast_nullable_to_non_nullable
              as List<CalcPdlParams>?,
      docs: freezed == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as Docs?,
      calc: freezed == calc
          ? _value.calc
          : calc // ignore: cast_nullable_to_non_nullable
              as Calc?,
      acf: freezed == acf
          ? _value.acf
          : acf // ignore: cast_nullable_to_non_nullable
              as Acf?,
      footerMenuTitle: freezed == footerMenuTitle
          ? _value.footerMenuTitle
          : footerMenuTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      headerMenu: freezed == headerMenu
          ? _value._headerMenu
          : headerMenu // ignore: cast_nullable_to_non_nullable
              as List<HeaderMenu>?,
      mobileMenu: freezed == mobileMenu
          ? _value._mobileMenu
          : mobileMenu // ignore: cast_nullable_to_non_nullable
              as List<MobileMenu>?,
      footerMenu: freezed == footerMenu
          ? _value._footerMenu
          : footerMenu // ignore: cast_nullable_to_non_nullable
              as List<FooterMenu>?,
      footerMenu2: freezed == footerMenu2
          ? _value._footerMenu2
          : footerMenu2 // ignore: cast_nullable_to_non_nullable
              as List<FooterMenu2>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WpDataImpl implements _WpData {
  const _$WpDataImpl(
      {@JsonKey(name: 'calc_pdl_params')
      final List<CalcPdlParams>? calcPdlParams,
      @JsonKey(name: 'docs') this.docs,
      @JsonKey(name: 'calc') this.calc,
      @JsonKey(name: 'acf') this.acf,
      @JsonKey(name: 'footer_menu_title') this.footerMenuTitle,
      @JsonKey(name: 'header_menu') final List<HeaderMenu>? headerMenu,
      @JsonKey(name: 'mobile_menu') final List<MobileMenu>? mobileMenu,
      @JsonKey(name: 'footer_menu') final List<FooterMenu>? footerMenu,
      @JsonKey(name: 'footer_menu_2') final List<FooterMenu2>? footerMenu2})
      : _calcPdlParams = calcPdlParams,
        _headerMenu = headerMenu,
        _mobileMenu = mobileMenu,
        _footerMenu = footerMenu,
        _footerMenu2 = footerMenu2;

  factory _$WpDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WpDataImplFromJson(json);

  final List<CalcPdlParams>? _calcPdlParams;
  @override
  @JsonKey(name: 'calc_pdl_params')
  List<CalcPdlParams>? get calcPdlParams {
    final value = _calcPdlParams;
    if (value == null) return null;
    if (_calcPdlParams is EqualUnmodifiableListView) return _calcPdlParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'docs')
  final Docs? docs;
  @override
  @JsonKey(name: 'calc')
  final Calc? calc;
  @override
  @JsonKey(name: 'acf')
  final Acf? acf;
  @override
  @JsonKey(name: 'footer_menu_title')
  final String? footerMenuTitle;
  final List<HeaderMenu>? _headerMenu;
  @override
  @JsonKey(name: 'header_menu')
  List<HeaderMenu>? get headerMenu {
    final value = _headerMenu;
    if (value == null) return null;
    if (_headerMenu is EqualUnmodifiableListView) return _headerMenu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MobileMenu>? _mobileMenu;
  @override
  @JsonKey(name: 'mobile_menu')
  List<MobileMenu>? get mobileMenu {
    final value = _mobileMenu;
    if (value == null) return null;
    if (_mobileMenu is EqualUnmodifiableListView) return _mobileMenu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FooterMenu>? _footerMenu;
  @override
  @JsonKey(name: 'footer_menu')
  List<FooterMenu>? get footerMenu {
    final value = _footerMenu;
    if (value == null) return null;
    if (_footerMenu is EqualUnmodifiableListView) return _footerMenu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FooterMenu2>? _footerMenu2;
  @override
  @JsonKey(name: 'footer_menu_2')
  List<FooterMenu2>? get footerMenu2 {
    final value = _footerMenu2;
    if (value == null) return null;
    if (_footerMenu2 is EqualUnmodifiableListView) return _footerMenu2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WpData(calcPdlParams: $calcPdlParams, docs: $docs, calc: $calc, acf: $acf, footerMenuTitle: $footerMenuTitle, headerMenu: $headerMenu, mobileMenu: $mobileMenu, footerMenu: $footerMenu, footerMenu2: $footerMenu2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WpDataImpl &&
            const DeepCollectionEquality()
                .equals(other._calcPdlParams, _calcPdlParams) &&
            (identical(other.docs, docs) || other.docs == docs) &&
            (identical(other.calc, calc) || other.calc == calc) &&
            (identical(other.acf, acf) || other.acf == acf) &&
            (identical(other.footerMenuTitle, footerMenuTitle) ||
                other.footerMenuTitle == footerMenuTitle) &&
            const DeepCollectionEquality()
                .equals(other._headerMenu, _headerMenu) &&
            const DeepCollectionEquality()
                .equals(other._mobileMenu, _mobileMenu) &&
            const DeepCollectionEquality()
                .equals(other._footerMenu, _footerMenu) &&
            const DeepCollectionEquality()
                .equals(other._footerMenu2, _footerMenu2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_calcPdlParams),
      docs,
      calc,
      acf,
      footerMenuTitle,
      const DeepCollectionEquality().hash(_headerMenu),
      const DeepCollectionEquality().hash(_mobileMenu),
      const DeepCollectionEquality().hash(_footerMenu),
      const DeepCollectionEquality().hash(_footerMenu2));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WpDataImplCopyWith<_$WpDataImpl> get copyWith =>
      __$$WpDataImplCopyWithImpl<_$WpDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WpDataImplToJson(
      this,
    );
  }
}

abstract class _WpData implements WpData {
  const factory _WpData(
      {@JsonKey(name: 'calc_pdl_params')
      final List<CalcPdlParams>? calcPdlParams,
      @JsonKey(name: 'docs') final Docs? docs,
      @JsonKey(name: 'calc') final Calc? calc,
      @JsonKey(name: 'acf') final Acf? acf,
      @JsonKey(name: 'footer_menu_title') final String? footerMenuTitle,
      @JsonKey(name: 'header_menu') final List<HeaderMenu>? headerMenu,
      @JsonKey(name: 'mobile_menu') final List<MobileMenu>? mobileMenu,
      @JsonKey(name: 'footer_menu') final List<FooterMenu>? footerMenu,
      @JsonKey(name: 'footer_menu_2')
      final List<FooterMenu2>? footerMenu2}) = _$WpDataImpl;

  factory _WpData.fromJson(Map<String, dynamic> json) = _$WpDataImpl.fromJson;

  @override
  @JsonKey(name: 'calc_pdl_params')
  List<CalcPdlParams>? get calcPdlParams;
  @override
  @JsonKey(name: 'docs')
  Docs? get docs;
  @override
  @JsonKey(name: 'calc')
  Calc? get calc;
  @override
  @JsonKey(name: 'acf')
  Acf? get acf;
  @override
  @JsonKey(name: 'footer_menu_title')
  String? get footerMenuTitle;
  @override
  @JsonKey(name: 'header_menu')
  List<HeaderMenu>? get headerMenu;
  @override
  @JsonKey(name: 'mobile_menu')
  List<MobileMenu>? get mobileMenu;
  @override
  @JsonKey(name: 'footer_menu')
  List<FooterMenu>? get footerMenu;
  @override
  @JsonKey(name: 'footer_menu_2')
  List<FooterMenu2>? get footerMenu2;
  @override
  @JsonKey(ignore: true)
  _$$WpDataImplCopyWith<_$WpDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CalcPdlParams _$CalcPdlParamsFromJson(Map<String, dynamic> json) {
  return _CalcPdlParams.fromJson(json);
}

/// @nodoc
mixin _$CalcPdlParams {
  @JsonKey(name: 'total_loan')
  int? get totalLoan => throw _privateConstructorUsedError;
  @JsonKey(name: 'calc_amount')
  String? get calcAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'calc_term')
  String? get calcTerm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalcPdlParamsCopyWith<CalcPdlParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcPdlParamsCopyWith<$Res> {
  factory $CalcPdlParamsCopyWith(
          CalcPdlParams value, $Res Function(CalcPdlParams) then) =
      _$CalcPdlParamsCopyWithImpl<$Res, CalcPdlParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_loan') int? totalLoan,
      @JsonKey(name: 'calc_amount') String? calcAmount,
      @JsonKey(name: 'calc_term') String? calcTerm});
}

/// @nodoc
class _$CalcPdlParamsCopyWithImpl<$Res, $Val extends CalcPdlParams>
    implements $CalcPdlParamsCopyWith<$Res> {
  _$CalcPdlParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalLoan = freezed,
    Object? calcAmount = freezed,
    Object? calcTerm = freezed,
  }) {
    return _then(_value.copyWith(
      totalLoan: freezed == totalLoan
          ? _value.totalLoan
          : totalLoan // ignore: cast_nullable_to_non_nullable
              as int?,
      calcAmount: freezed == calcAmount
          ? _value.calcAmount
          : calcAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      calcTerm: freezed == calcTerm
          ? _value.calcTerm
          : calcTerm // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalcPdlParamsImplCopyWith<$Res>
    implements $CalcPdlParamsCopyWith<$Res> {
  factory _$$CalcPdlParamsImplCopyWith(
          _$CalcPdlParamsImpl value, $Res Function(_$CalcPdlParamsImpl) then) =
      __$$CalcPdlParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_loan') int? totalLoan,
      @JsonKey(name: 'calc_amount') String? calcAmount,
      @JsonKey(name: 'calc_term') String? calcTerm});
}

/// @nodoc
class __$$CalcPdlParamsImplCopyWithImpl<$Res>
    extends _$CalcPdlParamsCopyWithImpl<$Res, _$CalcPdlParamsImpl>
    implements _$$CalcPdlParamsImplCopyWith<$Res> {
  __$$CalcPdlParamsImplCopyWithImpl(
      _$CalcPdlParamsImpl _value, $Res Function(_$CalcPdlParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalLoan = freezed,
    Object? calcAmount = freezed,
    Object? calcTerm = freezed,
  }) {
    return _then(_$CalcPdlParamsImpl(
      totalLoan: freezed == totalLoan
          ? _value.totalLoan
          : totalLoan // ignore: cast_nullable_to_non_nullable
              as int?,
      calcAmount: freezed == calcAmount
          ? _value.calcAmount
          : calcAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      calcTerm: freezed == calcTerm
          ? _value.calcTerm
          : calcTerm // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalcPdlParamsImpl implements _CalcPdlParams {
  const _$CalcPdlParamsImpl(
      {@JsonKey(name: 'total_loan') this.totalLoan,
      @JsonKey(name: 'calc_amount') this.calcAmount,
      @JsonKey(name: 'calc_term') this.calcTerm});

  factory _$CalcPdlParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalcPdlParamsImplFromJson(json);

  @override
  @JsonKey(name: 'total_loan')
  final int? totalLoan;
  @override
  @JsonKey(name: 'calc_amount')
  final String? calcAmount;
  @override
  @JsonKey(name: 'calc_term')
  final String? calcTerm;

  @override
  String toString() {
    return 'CalcPdlParams(totalLoan: $totalLoan, calcAmount: $calcAmount, calcTerm: $calcTerm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalcPdlParamsImpl &&
            (identical(other.totalLoan, totalLoan) ||
                other.totalLoan == totalLoan) &&
            (identical(other.calcAmount, calcAmount) ||
                other.calcAmount == calcAmount) &&
            (identical(other.calcTerm, calcTerm) ||
                other.calcTerm == calcTerm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalLoan, calcAmount, calcTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalcPdlParamsImplCopyWith<_$CalcPdlParamsImpl> get copyWith =>
      __$$CalcPdlParamsImplCopyWithImpl<_$CalcPdlParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalcPdlParamsImplToJson(
      this,
    );
  }
}

abstract class _CalcPdlParams implements CalcPdlParams {
  const factory _CalcPdlParams(
          {@JsonKey(name: 'total_loan') final int? totalLoan,
          @JsonKey(name: 'calc_amount') final String? calcAmount,
          @JsonKey(name: 'calc_term') final String? calcTerm}) =
      _$CalcPdlParamsImpl;

  factory _CalcPdlParams.fromJson(Map<String, dynamic> json) =
      _$CalcPdlParamsImpl.fromJson;

  @override
  @JsonKey(name: 'total_loan')
  int? get totalLoan;
  @override
  @JsonKey(name: 'calc_amount')
  String? get calcAmount;
  @override
  @JsonKey(name: 'calc_term')
  String? get calcTerm;
  @override
  @JsonKey(ignore: true)
  _$$CalcPdlParamsImplCopyWith<_$CalcPdlParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Docs _$DocsFromJson(Map<String, dynamic> json) {
  return _Docs.fromJson(json);
}

/// @nodoc
mixin _$Docs {
  @JsonKey(name: 'reg_first')
  RegFirst? get regFirst => throw _privateConstructorUsedError;
  @JsonKey(name: 'reg_second')
  RegSecond? get regSecond => throw _privateConstructorUsedError;
  @JsonKey(name: 'templates')
  Templates? get templates => throw _privateConstructorUsedError;
  @JsonKey(name: 'info_page')
  List<InfoPage>? get infoPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'templates_page')
  List<TemplatesPage>? get templatesPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocsCopyWith<Docs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocsCopyWith<$Res> {
  factory $DocsCopyWith(Docs value, $Res Function(Docs) then) =
      _$DocsCopyWithImpl<$Res, Docs>;
  @useResult
  $Res call(
      {@JsonKey(name: 'reg_first') RegFirst? regFirst,
      @JsonKey(name: 'reg_second') RegSecond? regSecond,
      @JsonKey(name: 'templates') Templates? templates,
      @JsonKey(name: 'info_page') List<InfoPage>? infoPage,
      @JsonKey(name: 'templates_page') List<TemplatesPage>? templatesPage});

  $RegFirstCopyWith<$Res>? get regFirst;
  $RegSecondCopyWith<$Res>? get regSecond;
  $TemplatesCopyWith<$Res>? get templates;
}

/// @nodoc
class _$DocsCopyWithImpl<$Res, $Val extends Docs>
    implements $DocsCopyWith<$Res> {
  _$DocsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regFirst = freezed,
    Object? regSecond = freezed,
    Object? templates = freezed,
    Object? infoPage = freezed,
    Object? templatesPage = freezed,
  }) {
    return _then(_value.copyWith(
      regFirst: freezed == regFirst
          ? _value.regFirst
          : regFirst // ignore: cast_nullable_to_non_nullable
              as RegFirst?,
      regSecond: freezed == regSecond
          ? _value.regSecond
          : regSecond // ignore: cast_nullable_to_non_nullable
              as RegSecond?,
      templates: freezed == templates
          ? _value.templates
          : templates // ignore: cast_nullable_to_non_nullable
              as Templates?,
      infoPage: freezed == infoPage
          ? _value.infoPage
          : infoPage // ignore: cast_nullable_to_non_nullable
              as List<InfoPage>?,
      templatesPage: freezed == templatesPage
          ? _value.templatesPage
          : templatesPage // ignore: cast_nullable_to_non_nullable
              as List<TemplatesPage>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegFirstCopyWith<$Res>? get regFirst {
    if (_value.regFirst == null) {
      return null;
    }

    return $RegFirstCopyWith<$Res>(_value.regFirst!, (value) {
      return _then(_value.copyWith(regFirst: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegSecondCopyWith<$Res>? get regSecond {
    if (_value.regSecond == null) {
      return null;
    }

    return $RegSecondCopyWith<$Res>(_value.regSecond!, (value) {
      return _then(_value.copyWith(regSecond: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TemplatesCopyWith<$Res>? get templates {
    if (_value.templates == null) {
      return null;
    }

    return $TemplatesCopyWith<$Res>(_value.templates!, (value) {
      return _then(_value.copyWith(templates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DocsImplCopyWith<$Res> implements $DocsCopyWith<$Res> {
  factory _$$DocsImplCopyWith(
          _$DocsImpl value, $Res Function(_$DocsImpl) then) =
      __$$DocsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reg_first') RegFirst? regFirst,
      @JsonKey(name: 'reg_second') RegSecond? regSecond,
      @JsonKey(name: 'templates') Templates? templates,
      @JsonKey(name: 'info_page') List<InfoPage>? infoPage,
      @JsonKey(name: 'templates_page') List<TemplatesPage>? templatesPage});

  @override
  $RegFirstCopyWith<$Res>? get regFirst;
  @override
  $RegSecondCopyWith<$Res>? get regSecond;
  @override
  $TemplatesCopyWith<$Res>? get templates;
}

/// @nodoc
class __$$DocsImplCopyWithImpl<$Res>
    extends _$DocsCopyWithImpl<$Res, _$DocsImpl>
    implements _$$DocsImplCopyWith<$Res> {
  __$$DocsImplCopyWithImpl(_$DocsImpl _value, $Res Function(_$DocsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regFirst = freezed,
    Object? regSecond = freezed,
    Object? templates = freezed,
    Object? infoPage = freezed,
    Object? templatesPage = freezed,
  }) {
    return _then(_$DocsImpl(
      regFirst: freezed == regFirst
          ? _value.regFirst
          : regFirst // ignore: cast_nullable_to_non_nullable
              as RegFirst?,
      regSecond: freezed == regSecond
          ? _value.regSecond
          : regSecond // ignore: cast_nullable_to_non_nullable
              as RegSecond?,
      templates: freezed == templates
          ? _value.templates
          : templates // ignore: cast_nullable_to_non_nullable
              as Templates?,
      infoPage: freezed == infoPage
          ? _value._infoPage
          : infoPage // ignore: cast_nullable_to_non_nullable
              as List<InfoPage>?,
      templatesPage: freezed == templatesPage
          ? _value._templatesPage
          : templatesPage // ignore: cast_nullable_to_non_nullable
              as List<TemplatesPage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocsImpl implements _Docs {
  const _$DocsImpl(
      {@JsonKey(name: 'reg_first') this.regFirst,
      @JsonKey(name: 'reg_second') this.regSecond,
      @JsonKey(name: 'templates') this.templates,
      @JsonKey(name: 'info_page') final List<InfoPage>? infoPage,
      @JsonKey(name: 'templates_page')
      final List<TemplatesPage>? templatesPage})
      : _infoPage = infoPage,
        _templatesPage = templatesPage;

  factory _$DocsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocsImplFromJson(json);

  @override
  @JsonKey(name: 'reg_first')
  final RegFirst? regFirst;
  @override
  @JsonKey(name: 'reg_second')
  final RegSecond? regSecond;
  @override
  @JsonKey(name: 'templates')
  final Templates? templates;
  final List<InfoPage>? _infoPage;
  @override
  @JsonKey(name: 'info_page')
  List<InfoPage>? get infoPage {
    final value = _infoPage;
    if (value == null) return null;
    if (_infoPage is EqualUnmodifiableListView) return _infoPage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TemplatesPage>? _templatesPage;
  @override
  @JsonKey(name: 'templates_page')
  List<TemplatesPage>? get templatesPage {
    final value = _templatesPage;
    if (value == null) return null;
    if (_templatesPage is EqualUnmodifiableListView) return _templatesPage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Docs(regFirst: $regFirst, regSecond: $regSecond, templates: $templates, infoPage: $infoPage, templatesPage: $templatesPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocsImpl &&
            (identical(other.regFirst, regFirst) ||
                other.regFirst == regFirst) &&
            (identical(other.regSecond, regSecond) ||
                other.regSecond == regSecond) &&
            (identical(other.templates, templates) ||
                other.templates == templates) &&
            const DeepCollectionEquality().equals(other._infoPage, _infoPage) &&
            const DeepCollectionEquality()
                .equals(other._templatesPage, _templatesPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      regFirst,
      regSecond,
      templates,
      const DeepCollectionEquality().hash(_infoPage),
      const DeepCollectionEquality().hash(_templatesPage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocsImplCopyWith<_$DocsImpl> get copyWith =>
      __$$DocsImplCopyWithImpl<_$DocsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocsImplToJson(
      this,
    );
  }
}

abstract class _Docs implements Docs {
  const factory _Docs(
      {@JsonKey(name: 'reg_first') final RegFirst? regFirst,
      @JsonKey(name: 'reg_second') final RegSecond? regSecond,
      @JsonKey(name: 'templates') final Templates? templates,
      @JsonKey(name: 'info_page') final List<InfoPage>? infoPage,
      @JsonKey(name: 'templates_page')
      final List<TemplatesPage>? templatesPage}) = _$DocsImpl;

  factory _Docs.fromJson(Map<String, dynamic> json) = _$DocsImpl.fromJson;

  @override
  @JsonKey(name: 'reg_first')
  RegFirst? get regFirst;
  @override
  @JsonKey(name: 'reg_second')
  RegSecond? get regSecond;
  @override
  @JsonKey(name: 'templates')
  Templates? get templates;
  @override
  @JsonKey(name: 'info_page')
  List<InfoPage>? get infoPage;
  @override
  @JsonKey(name: 'templates_page')
  List<TemplatesPage>? get templatesPage;
  @override
  @JsonKey(ignore: true)
  _$$DocsImplCopyWith<_$DocsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegFirst _$RegFirstFromJson(Map<String, dynamic> json) {
  return _RegFirst.fromJson(json);
}

/// @nodoc
mixin _$RegFirst {
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'lines')
  List<String>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegFirstCopyWith<RegFirst> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegFirstCopyWith<$Res> {
  factory $RegFirstCopyWith(RegFirst value, $Res Function(RegFirst) then) =
      _$RegFirstCopyWithImpl<$Res, RegFirst>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String? text,
      @JsonKey(name: 'lines') List<String>? lines});
}

/// @nodoc
class _$RegFirstCopyWithImpl<$Res, $Val extends RegFirst>
    implements $RegFirstCopyWith<$Res> {
  _$RegFirstCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegFirstImplCopyWith<$Res>
    implements $RegFirstCopyWith<$Res> {
  factory _$$RegFirstImplCopyWith(
          _$RegFirstImpl value, $Res Function(_$RegFirstImpl) then) =
      __$$RegFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String? text,
      @JsonKey(name: 'lines') List<String>? lines});
}

/// @nodoc
class __$$RegFirstImplCopyWithImpl<$Res>
    extends _$RegFirstCopyWithImpl<$Res, _$RegFirstImpl>
    implements _$$RegFirstImplCopyWith<$Res> {
  __$$RegFirstImplCopyWithImpl(
      _$RegFirstImpl _value, $Res Function(_$RegFirstImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? lines = freezed,
  }) {
    return _then(_$RegFirstImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegFirstImpl implements _RegFirst {
  const _$RegFirstImpl(
      {@JsonKey(name: 'text') this.text,
      @JsonKey(name: 'lines') final List<String>? lines})
      : _lines = lines;

  factory _$RegFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegFirstImplFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String? text;
  final List<String>? _lines;
  @override
  @JsonKey(name: 'lines')
  List<String>? get lines {
    final value = _lines;
    if (value == null) return null;
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegFirst(text: $text, lines: $lines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegFirstImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegFirstImplCopyWith<_$RegFirstImpl> get copyWith =>
      __$$RegFirstImplCopyWithImpl<_$RegFirstImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegFirstImplToJson(
      this,
    );
  }
}

abstract class _RegFirst implements RegFirst {
  const factory _RegFirst(
      {@JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'lines') final List<String>? lines}) = _$RegFirstImpl;

  factory _RegFirst.fromJson(Map<String, dynamic> json) =
      _$RegFirstImpl.fromJson;

  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'lines')
  List<String>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$RegFirstImplCopyWith<_$RegFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegSecond _$RegSecondFromJson(Map<String, dynamic> json) {
  return _RegSecond.fromJson(json);
}

/// @nodoc
mixin _$RegSecond {
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'lines')
  List<String>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegSecondCopyWith<RegSecond> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegSecondCopyWith<$Res> {
  factory $RegSecondCopyWith(RegSecond value, $Res Function(RegSecond) then) =
      _$RegSecondCopyWithImpl<$Res, RegSecond>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String? text,
      @JsonKey(name: 'lines') List<String>? lines});
}

/// @nodoc
class _$RegSecondCopyWithImpl<$Res, $Val extends RegSecond>
    implements $RegSecondCopyWith<$Res> {
  _$RegSecondCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegSecondImplCopyWith<$Res>
    implements $RegSecondCopyWith<$Res> {
  factory _$$RegSecondImplCopyWith(
          _$RegSecondImpl value, $Res Function(_$RegSecondImpl) then) =
      __$$RegSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String? text,
      @JsonKey(name: 'lines') List<String>? lines});
}

/// @nodoc
class __$$RegSecondImplCopyWithImpl<$Res>
    extends _$RegSecondCopyWithImpl<$Res, _$RegSecondImpl>
    implements _$$RegSecondImplCopyWith<$Res> {
  __$$RegSecondImplCopyWithImpl(
      _$RegSecondImpl _value, $Res Function(_$RegSecondImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? lines = freezed,
  }) {
    return _then(_$RegSecondImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegSecondImpl implements _RegSecond {
  const _$RegSecondImpl(
      {@JsonKey(name: 'text') this.text,
      @JsonKey(name: 'lines') final List<String>? lines})
      : _lines = lines;

  factory _$RegSecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegSecondImplFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String? text;
  final List<String>? _lines;
  @override
  @JsonKey(name: 'lines')
  List<String>? get lines {
    final value = _lines;
    if (value == null) return null;
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegSecond(text: $text, lines: $lines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegSecondImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegSecondImplCopyWith<_$RegSecondImpl> get copyWith =>
      __$$RegSecondImplCopyWithImpl<_$RegSecondImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegSecondImplToJson(
      this,
    );
  }
}

abstract class _RegSecond implements RegSecond {
  const factory _RegSecond(
      {@JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'lines') final List<String>? lines}) = _$RegSecondImpl;

  factory _RegSecond.fromJson(Map<String, dynamic> json) =
      _$RegSecondImpl.fromJson;

  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'lines')
  List<String>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$RegSecondImplCopyWith<_$RegSecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Templates _$TemplatesFromJson(Map<String, dynamic> json) {
  return _Templates.fromJson(json);
}

/// @nodoc
mixin _$Templates {
  @JsonKey(name: 'agreementCollectiveInsurance')
  AgreementCollectiveInsurance? get agreementCollectiveInsurance =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCardProtection')
  AgreementCardProtection? get agreementCardProtection =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCardProtectionOffer')
  AgreementCardProtectionOffer? get agreementCardProtectionOffer =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCollectiveInsuranceStatement')
  AgreementCollectiveInsuranceStatement?
      get agreementCollectiveInsuranceStatement =>
          throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementStayInTouchStatement')
  AgreementStayInTouchStatement? get agreementStayInTouchStatement =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCardProtectionStatement')
  AgreementCardProtectionStatement? get agreementCardProtectionStatement =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCollectiveInsuranceKid')
  AgreementCollectiveInsuranceKid? get agreementCollectiveInsuranceKid =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCardProtectionKid')
  AgreementCardProtectionKid? get agreementCardProtectionKid =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'loanRules')
  LoanRules? get loanRules => throw _privateConstructorUsedError;
  @JsonKey(name: 'programStayInTouch')
  ProgramStayInTouch? get programStayInTouch =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'programCollectiveInsurance')
  ProgramCollectiveInsurance? get programCollectiveInsurance =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'programCardProtection')
  ProgramCardProtection? get programCardProtection =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementAd')
  AgreementAd? get agreementAd => throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCollectiveInsuranceOffer')
  AgreementCollectiveInsuranceOffer? get agreementCollectiveInsuranceOffer =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementConsentAutoCharge')
  AgreementConsentAutoCharge? get agreementConsentAutoCharge =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'servicesTariffs')
  ServicesTariffs? get servicesTariffs => throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementProcessingPersonalData')
  AgreementProcessingPersonalData? get agreementProcessingPersonalData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'informationAboutRegistrationProcedure')
  InformationAboutRegistrationProcedure?
      get informationAboutRegistrationProcedure =>
          throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplatesCopyWith<Templates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplatesCopyWith<$Res> {
  factory $TemplatesCopyWith(Templates value, $Res Function(Templates) then) =
      _$TemplatesCopyWithImpl<$Res, Templates>;
  @useResult
  $Res call(
      {@JsonKey(name: 'agreementCollectiveInsurance')
      AgreementCollectiveInsurance? agreementCollectiveInsurance,
      @JsonKey(name: 'agreementCardProtection')
      AgreementCardProtection? agreementCardProtection,
      @JsonKey(name: 'agreementCardProtectionOffer')
      AgreementCardProtectionOffer? agreementCardProtectionOffer,
      @JsonKey(name: 'agreementCollectiveInsuranceStatement')
      AgreementCollectiveInsuranceStatement?
          agreementCollectiveInsuranceStatement,
      @JsonKey(name: 'agreementStayInTouchStatement')
      AgreementStayInTouchStatement? agreementStayInTouchStatement,
      @JsonKey(name: 'agreementCardProtectionStatement')
      AgreementCardProtectionStatement? agreementCardProtectionStatement,
      @JsonKey(name: 'agreementCollectiveInsuranceKid')
      AgreementCollectiveInsuranceKid? agreementCollectiveInsuranceKid,
      @JsonKey(name: 'agreementCardProtectionKid')
      AgreementCardProtectionKid? agreementCardProtectionKid,
      @JsonKey(name: 'loanRules') LoanRules? loanRules,
      @JsonKey(name: 'programStayInTouch')
      ProgramStayInTouch? programStayInTouch,
      @JsonKey(name: 'programCollectiveInsurance')
      ProgramCollectiveInsurance? programCollectiveInsurance,
      @JsonKey(name: 'programCardProtection')
      ProgramCardProtection? programCardProtection,
      @JsonKey(name: 'agreementAd') AgreementAd? agreementAd,
      @JsonKey(name: 'agreementCollectiveInsuranceOffer')
      AgreementCollectiveInsuranceOffer? agreementCollectiveInsuranceOffer,
      @JsonKey(name: 'agreementConsentAutoCharge')
      AgreementConsentAutoCharge? agreementConsentAutoCharge,
      @JsonKey(name: 'servicesTariffs') ServicesTariffs? servicesTariffs,
      @JsonKey(name: 'agreementProcessingPersonalData')
      AgreementProcessingPersonalData? agreementProcessingPersonalData,
      @JsonKey(name: 'informationAboutRegistrationProcedure')
      InformationAboutRegistrationProcedure?
          informationAboutRegistrationProcedure});

  $AgreementCollectiveInsuranceCopyWith<$Res>? get agreementCollectiveInsurance;
  $AgreementCardProtectionCopyWith<$Res>? get agreementCardProtection;
  $AgreementCardProtectionOfferCopyWith<$Res>? get agreementCardProtectionOffer;
  $AgreementCollectiveInsuranceStatementCopyWith<$Res>?
      get agreementCollectiveInsuranceStatement;
  $AgreementStayInTouchStatementCopyWith<$Res>?
      get agreementStayInTouchStatement;
  $AgreementCardProtectionStatementCopyWith<$Res>?
      get agreementCardProtectionStatement;
  $AgreementCollectiveInsuranceKidCopyWith<$Res>?
      get agreementCollectiveInsuranceKid;
  $AgreementCardProtectionKidCopyWith<$Res>? get agreementCardProtectionKid;
  $LoanRulesCopyWith<$Res>? get loanRules;
  $ProgramStayInTouchCopyWith<$Res>? get programStayInTouch;
  $ProgramCollectiveInsuranceCopyWith<$Res>? get programCollectiveInsurance;
  $ProgramCardProtectionCopyWith<$Res>? get programCardProtection;
  $AgreementAdCopyWith<$Res>? get agreementAd;
  $AgreementCollectiveInsuranceOfferCopyWith<$Res>?
      get agreementCollectiveInsuranceOffer;
  $AgreementConsentAutoChargeCopyWith<$Res>? get agreementConsentAutoCharge;
  $ServicesTariffsCopyWith<$Res>? get servicesTariffs;
  $AgreementProcessingPersonalDataCopyWith<$Res>?
      get agreementProcessingPersonalData;
  $InformationAboutRegistrationProcedureCopyWith<$Res>?
      get informationAboutRegistrationProcedure;
}

/// @nodoc
class _$TemplatesCopyWithImpl<$Res, $Val extends Templates>
    implements $TemplatesCopyWith<$Res> {
  _$TemplatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreementCollectiveInsurance = freezed,
    Object? agreementCardProtection = freezed,
    Object? agreementCardProtectionOffer = freezed,
    Object? agreementCollectiveInsuranceStatement = freezed,
    Object? agreementStayInTouchStatement = freezed,
    Object? agreementCardProtectionStatement = freezed,
    Object? agreementCollectiveInsuranceKid = freezed,
    Object? agreementCardProtectionKid = freezed,
    Object? loanRules = freezed,
    Object? programStayInTouch = freezed,
    Object? programCollectiveInsurance = freezed,
    Object? programCardProtection = freezed,
    Object? agreementAd = freezed,
    Object? agreementCollectiveInsuranceOffer = freezed,
    Object? agreementConsentAutoCharge = freezed,
    Object? servicesTariffs = freezed,
    Object? agreementProcessingPersonalData = freezed,
    Object? informationAboutRegistrationProcedure = freezed,
  }) {
    return _then(_value.copyWith(
      agreementCollectiveInsurance: freezed == agreementCollectiveInsurance
          ? _value.agreementCollectiveInsurance
          : agreementCollectiveInsurance // ignore: cast_nullable_to_non_nullable
              as AgreementCollectiveInsurance?,
      agreementCardProtection: freezed == agreementCardProtection
          ? _value.agreementCardProtection
          : agreementCardProtection // ignore: cast_nullable_to_non_nullable
              as AgreementCardProtection?,
      agreementCardProtectionOffer: freezed == agreementCardProtectionOffer
          ? _value.agreementCardProtectionOffer
          : agreementCardProtectionOffer // ignore: cast_nullable_to_non_nullable
              as AgreementCardProtectionOffer?,
      agreementCollectiveInsuranceStatement: freezed ==
              agreementCollectiveInsuranceStatement
          ? _value.agreementCollectiveInsuranceStatement
          : agreementCollectiveInsuranceStatement // ignore: cast_nullable_to_non_nullable
              as AgreementCollectiveInsuranceStatement?,
      agreementStayInTouchStatement: freezed == agreementStayInTouchStatement
          ? _value.agreementStayInTouchStatement
          : agreementStayInTouchStatement // ignore: cast_nullable_to_non_nullable
              as AgreementStayInTouchStatement?,
      agreementCardProtectionStatement: freezed ==
              agreementCardProtectionStatement
          ? _value.agreementCardProtectionStatement
          : agreementCardProtectionStatement // ignore: cast_nullable_to_non_nullable
              as AgreementCardProtectionStatement?,
      agreementCollectiveInsuranceKid: freezed ==
              agreementCollectiveInsuranceKid
          ? _value.agreementCollectiveInsuranceKid
          : agreementCollectiveInsuranceKid // ignore: cast_nullable_to_non_nullable
              as AgreementCollectiveInsuranceKid?,
      agreementCardProtectionKid: freezed == agreementCardProtectionKid
          ? _value.agreementCardProtectionKid
          : agreementCardProtectionKid // ignore: cast_nullable_to_non_nullable
              as AgreementCardProtectionKid?,
      loanRules: freezed == loanRules
          ? _value.loanRules
          : loanRules // ignore: cast_nullable_to_non_nullable
              as LoanRules?,
      programStayInTouch: freezed == programStayInTouch
          ? _value.programStayInTouch
          : programStayInTouch // ignore: cast_nullable_to_non_nullable
              as ProgramStayInTouch?,
      programCollectiveInsurance: freezed == programCollectiveInsurance
          ? _value.programCollectiveInsurance
          : programCollectiveInsurance // ignore: cast_nullable_to_non_nullable
              as ProgramCollectiveInsurance?,
      programCardProtection: freezed == programCardProtection
          ? _value.programCardProtection
          : programCardProtection // ignore: cast_nullable_to_non_nullable
              as ProgramCardProtection?,
      agreementAd: freezed == agreementAd
          ? _value.agreementAd
          : agreementAd // ignore: cast_nullable_to_non_nullable
              as AgreementAd?,
      agreementCollectiveInsuranceOffer: freezed ==
              agreementCollectiveInsuranceOffer
          ? _value.agreementCollectiveInsuranceOffer
          : agreementCollectiveInsuranceOffer // ignore: cast_nullable_to_non_nullable
              as AgreementCollectiveInsuranceOffer?,
      agreementConsentAutoCharge: freezed == agreementConsentAutoCharge
          ? _value.agreementConsentAutoCharge
          : agreementConsentAutoCharge // ignore: cast_nullable_to_non_nullable
              as AgreementConsentAutoCharge?,
      servicesTariffs: freezed == servicesTariffs
          ? _value.servicesTariffs
          : servicesTariffs // ignore: cast_nullable_to_non_nullable
              as ServicesTariffs?,
      agreementProcessingPersonalData: freezed ==
              agreementProcessingPersonalData
          ? _value.agreementProcessingPersonalData
          : agreementProcessingPersonalData // ignore: cast_nullable_to_non_nullable
              as AgreementProcessingPersonalData?,
      informationAboutRegistrationProcedure: freezed ==
              informationAboutRegistrationProcedure
          ? _value.informationAboutRegistrationProcedure
          : informationAboutRegistrationProcedure // ignore: cast_nullable_to_non_nullable
              as InformationAboutRegistrationProcedure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementCollectiveInsuranceCopyWith<$Res>?
      get agreementCollectiveInsurance {
    if (_value.agreementCollectiveInsurance == null) {
      return null;
    }

    return $AgreementCollectiveInsuranceCopyWith<$Res>(
        _value.agreementCollectiveInsurance!, (value) {
      return _then(
          _value.copyWith(agreementCollectiveInsurance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementCardProtectionCopyWith<$Res>? get agreementCardProtection {
    if (_value.agreementCardProtection == null) {
      return null;
    }

    return $AgreementCardProtectionCopyWith<$Res>(
        _value.agreementCardProtection!, (value) {
      return _then(_value.copyWith(agreementCardProtection: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementCardProtectionOfferCopyWith<$Res>?
      get agreementCardProtectionOffer {
    if (_value.agreementCardProtectionOffer == null) {
      return null;
    }

    return $AgreementCardProtectionOfferCopyWith<$Res>(
        _value.agreementCardProtectionOffer!, (value) {
      return _then(
          _value.copyWith(agreementCardProtectionOffer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementCollectiveInsuranceStatementCopyWith<$Res>?
      get agreementCollectiveInsuranceStatement {
    if (_value.agreementCollectiveInsuranceStatement == null) {
      return null;
    }

    return $AgreementCollectiveInsuranceStatementCopyWith<$Res>(
        _value.agreementCollectiveInsuranceStatement!, (value) {
      return _then(_value.copyWith(agreementCollectiveInsuranceStatement: value)
          as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementStayInTouchStatementCopyWith<$Res>?
      get agreementStayInTouchStatement {
    if (_value.agreementStayInTouchStatement == null) {
      return null;
    }

    return $AgreementStayInTouchStatementCopyWith<$Res>(
        _value.agreementStayInTouchStatement!, (value) {
      return _then(
          _value.copyWith(agreementStayInTouchStatement: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementCardProtectionStatementCopyWith<$Res>?
      get agreementCardProtectionStatement {
    if (_value.agreementCardProtectionStatement == null) {
      return null;
    }

    return $AgreementCardProtectionStatementCopyWith<$Res>(
        _value.agreementCardProtectionStatement!, (value) {
      return _then(
          _value.copyWith(agreementCardProtectionStatement: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementCollectiveInsuranceKidCopyWith<$Res>?
      get agreementCollectiveInsuranceKid {
    if (_value.agreementCollectiveInsuranceKid == null) {
      return null;
    }

    return $AgreementCollectiveInsuranceKidCopyWith<$Res>(
        _value.agreementCollectiveInsuranceKid!, (value) {
      return _then(
          _value.copyWith(agreementCollectiveInsuranceKid: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementCardProtectionKidCopyWith<$Res>? get agreementCardProtectionKid {
    if (_value.agreementCardProtectionKid == null) {
      return null;
    }

    return $AgreementCardProtectionKidCopyWith<$Res>(
        _value.agreementCardProtectionKid!, (value) {
      return _then(_value.copyWith(agreementCardProtectionKid: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoanRulesCopyWith<$Res>? get loanRules {
    if (_value.loanRules == null) {
      return null;
    }

    return $LoanRulesCopyWith<$Res>(_value.loanRules!, (value) {
      return _then(_value.copyWith(loanRules: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramStayInTouchCopyWith<$Res>? get programStayInTouch {
    if (_value.programStayInTouch == null) {
      return null;
    }

    return $ProgramStayInTouchCopyWith<$Res>(_value.programStayInTouch!,
        (value) {
      return _then(_value.copyWith(programStayInTouch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramCollectiveInsuranceCopyWith<$Res>? get programCollectiveInsurance {
    if (_value.programCollectiveInsurance == null) {
      return null;
    }

    return $ProgramCollectiveInsuranceCopyWith<$Res>(
        _value.programCollectiveInsurance!, (value) {
      return _then(_value.copyWith(programCollectiveInsurance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramCardProtectionCopyWith<$Res>? get programCardProtection {
    if (_value.programCardProtection == null) {
      return null;
    }

    return $ProgramCardProtectionCopyWith<$Res>(_value.programCardProtection!,
        (value) {
      return _then(_value.copyWith(programCardProtection: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementAdCopyWith<$Res>? get agreementAd {
    if (_value.agreementAd == null) {
      return null;
    }

    return $AgreementAdCopyWith<$Res>(_value.agreementAd!, (value) {
      return _then(_value.copyWith(agreementAd: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementCollectiveInsuranceOfferCopyWith<$Res>?
      get agreementCollectiveInsuranceOffer {
    if (_value.agreementCollectiveInsuranceOffer == null) {
      return null;
    }

    return $AgreementCollectiveInsuranceOfferCopyWith<$Res>(
        _value.agreementCollectiveInsuranceOffer!, (value) {
      return _then(
          _value.copyWith(agreementCollectiveInsuranceOffer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementConsentAutoChargeCopyWith<$Res>? get agreementConsentAutoCharge {
    if (_value.agreementConsentAutoCharge == null) {
      return null;
    }

    return $AgreementConsentAutoChargeCopyWith<$Res>(
        _value.agreementConsentAutoCharge!, (value) {
      return _then(_value.copyWith(agreementConsentAutoCharge: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServicesTariffsCopyWith<$Res>? get servicesTariffs {
    if (_value.servicesTariffs == null) {
      return null;
    }

    return $ServicesTariffsCopyWith<$Res>(_value.servicesTariffs!, (value) {
      return _then(_value.copyWith(servicesTariffs: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgreementProcessingPersonalDataCopyWith<$Res>?
      get agreementProcessingPersonalData {
    if (_value.agreementProcessingPersonalData == null) {
      return null;
    }

    return $AgreementProcessingPersonalDataCopyWith<$Res>(
        _value.agreementProcessingPersonalData!, (value) {
      return _then(
          _value.copyWith(agreementProcessingPersonalData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InformationAboutRegistrationProcedureCopyWith<$Res>?
      get informationAboutRegistrationProcedure {
    if (_value.informationAboutRegistrationProcedure == null) {
      return null;
    }

    return $InformationAboutRegistrationProcedureCopyWith<$Res>(
        _value.informationAboutRegistrationProcedure!, (value) {
      return _then(_value.copyWith(informationAboutRegistrationProcedure: value)
          as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TemplatesImplCopyWith<$Res>
    implements $TemplatesCopyWith<$Res> {
  factory _$$TemplatesImplCopyWith(
          _$TemplatesImpl value, $Res Function(_$TemplatesImpl) then) =
      __$$TemplatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'agreementCollectiveInsurance')
      AgreementCollectiveInsurance? agreementCollectiveInsurance,
      @JsonKey(name: 'agreementCardProtection')
      AgreementCardProtection? agreementCardProtection,
      @JsonKey(name: 'agreementCardProtectionOffer')
      AgreementCardProtectionOffer? agreementCardProtectionOffer,
      @JsonKey(name: 'agreementCollectiveInsuranceStatement')
      AgreementCollectiveInsuranceStatement?
          agreementCollectiveInsuranceStatement,
      @JsonKey(name: 'agreementStayInTouchStatement')
      AgreementStayInTouchStatement? agreementStayInTouchStatement,
      @JsonKey(name: 'agreementCardProtectionStatement')
      AgreementCardProtectionStatement? agreementCardProtectionStatement,
      @JsonKey(name: 'agreementCollectiveInsuranceKid')
      AgreementCollectiveInsuranceKid? agreementCollectiveInsuranceKid,
      @JsonKey(name: 'agreementCardProtectionKid')
      AgreementCardProtectionKid? agreementCardProtectionKid,
      @JsonKey(name: 'loanRules') LoanRules? loanRules,
      @JsonKey(name: 'programStayInTouch')
      ProgramStayInTouch? programStayInTouch,
      @JsonKey(name: 'programCollectiveInsurance')
      ProgramCollectiveInsurance? programCollectiveInsurance,
      @JsonKey(name: 'programCardProtection')
      ProgramCardProtection? programCardProtection,
      @JsonKey(name: 'agreementAd') AgreementAd? agreementAd,
      @JsonKey(name: 'agreementCollectiveInsuranceOffer')
      AgreementCollectiveInsuranceOffer? agreementCollectiveInsuranceOffer,
      @JsonKey(name: 'agreementConsentAutoCharge')
      AgreementConsentAutoCharge? agreementConsentAutoCharge,
      @JsonKey(name: 'servicesTariffs') ServicesTariffs? servicesTariffs,
      @JsonKey(name: 'agreementProcessingPersonalData')
      AgreementProcessingPersonalData? agreementProcessingPersonalData,
      @JsonKey(name: 'informationAboutRegistrationProcedure')
      InformationAboutRegistrationProcedure?
          informationAboutRegistrationProcedure});

  @override
  $AgreementCollectiveInsuranceCopyWith<$Res>? get agreementCollectiveInsurance;
  @override
  $AgreementCardProtectionCopyWith<$Res>? get agreementCardProtection;
  @override
  $AgreementCardProtectionOfferCopyWith<$Res>? get agreementCardProtectionOffer;
  @override
  $AgreementCollectiveInsuranceStatementCopyWith<$Res>?
      get agreementCollectiveInsuranceStatement;
  @override
  $AgreementStayInTouchStatementCopyWith<$Res>?
      get agreementStayInTouchStatement;
  @override
  $AgreementCardProtectionStatementCopyWith<$Res>?
      get agreementCardProtectionStatement;
  @override
  $AgreementCollectiveInsuranceKidCopyWith<$Res>?
      get agreementCollectiveInsuranceKid;
  @override
  $AgreementCardProtectionKidCopyWith<$Res>? get agreementCardProtectionKid;
  @override
  $LoanRulesCopyWith<$Res>? get loanRules;
  @override
  $ProgramStayInTouchCopyWith<$Res>? get programStayInTouch;
  @override
  $ProgramCollectiveInsuranceCopyWith<$Res>? get programCollectiveInsurance;
  @override
  $ProgramCardProtectionCopyWith<$Res>? get programCardProtection;
  @override
  $AgreementAdCopyWith<$Res>? get agreementAd;
  @override
  $AgreementCollectiveInsuranceOfferCopyWith<$Res>?
      get agreementCollectiveInsuranceOffer;
  @override
  $AgreementConsentAutoChargeCopyWith<$Res>? get agreementConsentAutoCharge;
  @override
  $ServicesTariffsCopyWith<$Res>? get servicesTariffs;
  @override
  $AgreementProcessingPersonalDataCopyWith<$Res>?
      get agreementProcessingPersonalData;
  @override
  $InformationAboutRegistrationProcedureCopyWith<$Res>?
      get informationAboutRegistrationProcedure;
}

/// @nodoc
class __$$TemplatesImplCopyWithImpl<$Res>
    extends _$TemplatesCopyWithImpl<$Res, _$TemplatesImpl>
    implements _$$TemplatesImplCopyWith<$Res> {
  __$$TemplatesImplCopyWithImpl(
      _$TemplatesImpl _value, $Res Function(_$TemplatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreementCollectiveInsurance = freezed,
    Object? agreementCardProtection = freezed,
    Object? agreementCardProtectionOffer = freezed,
    Object? agreementCollectiveInsuranceStatement = freezed,
    Object? agreementStayInTouchStatement = freezed,
    Object? agreementCardProtectionStatement = freezed,
    Object? agreementCollectiveInsuranceKid = freezed,
    Object? agreementCardProtectionKid = freezed,
    Object? loanRules = freezed,
    Object? programStayInTouch = freezed,
    Object? programCollectiveInsurance = freezed,
    Object? programCardProtection = freezed,
    Object? agreementAd = freezed,
    Object? agreementCollectiveInsuranceOffer = freezed,
    Object? agreementConsentAutoCharge = freezed,
    Object? servicesTariffs = freezed,
    Object? agreementProcessingPersonalData = freezed,
    Object? informationAboutRegistrationProcedure = freezed,
  }) {
    return _then(_$TemplatesImpl(
      agreementCollectiveInsurance: freezed == agreementCollectiveInsurance
          ? _value.agreementCollectiveInsurance
          : agreementCollectiveInsurance // ignore: cast_nullable_to_non_nullable
              as AgreementCollectiveInsurance?,
      agreementCardProtection: freezed == agreementCardProtection
          ? _value.agreementCardProtection
          : agreementCardProtection // ignore: cast_nullable_to_non_nullable
              as AgreementCardProtection?,
      agreementCardProtectionOffer: freezed == agreementCardProtectionOffer
          ? _value.agreementCardProtectionOffer
          : agreementCardProtectionOffer // ignore: cast_nullable_to_non_nullable
              as AgreementCardProtectionOffer?,
      agreementCollectiveInsuranceStatement: freezed ==
              agreementCollectiveInsuranceStatement
          ? _value.agreementCollectiveInsuranceStatement
          : agreementCollectiveInsuranceStatement // ignore: cast_nullable_to_non_nullable
              as AgreementCollectiveInsuranceStatement?,
      agreementStayInTouchStatement: freezed == agreementStayInTouchStatement
          ? _value.agreementStayInTouchStatement
          : agreementStayInTouchStatement // ignore: cast_nullable_to_non_nullable
              as AgreementStayInTouchStatement?,
      agreementCardProtectionStatement: freezed ==
              agreementCardProtectionStatement
          ? _value.agreementCardProtectionStatement
          : agreementCardProtectionStatement // ignore: cast_nullable_to_non_nullable
              as AgreementCardProtectionStatement?,
      agreementCollectiveInsuranceKid: freezed ==
              agreementCollectiveInsuranceKid
          ? _value.agreementCollectiveInsuranceKid
          : agreementCollectiveInsuranceKid // ignore: cast_nullable_to_non_nullable
              as AgreementCollectiveInsuranceKid?,
      agreementCardProtectionKid: freezed == agreementCardProtectionKid
          ? _value.agreementCardProtectionKid
          : agreementCardProtectionKid // ignore: cast_nullable_to_non_nullable
              as AgreementCardProtectionKid?,
      loanRules: freezed == loanRules
          ? _value.loanRules
          : loanRules // ignore: cast_nullable_to_non_nullable
              as LoanRules?,
      programStayInTouch: freezed == programStayInTouch
          ? _value.programStayInTouch
          : programStayInTouch // ignore: cast_nullable_to_non_nullable
              as ProgramStayInTouch?,
      programCollectiveInsurance: freezed == programCollectiveInsurance
          ? _value.programCollectiveInsurance
          : programCollectiveInsurance // ignore: cast_nullable_to_non_nullable
              as ProgramCollectiveInsurance?,
      programCardProtection: freezed == programCardProtection
          ? _value.programCardProtection
          : programCardProtection // ignore: cast_nullable_to_non_nullable
              as ProgramCardProtection?,
      agreementAd: freezed == agreementAd
          ? _value.agreementAd
          : agreementAd // ignore: cast_nullable_to_non_nullable
              as AgreementAd?,
      agreementCollectiveInsuranceOffer: freezed ==
              agreementCollectiveInsuranceOffer
          ? _value.agreementCollectiveInsuranceOffer
          : agreementCollectiveInsuranceOffer // ignore: cast_nullable_to_non_nullable
              as AgreementCollectiveInsuranceOffer?,
      agreementConsentAutoCharge: freezed == agreementConsentAutoCharge
          ? _value.agreementConsentAutoCharge
          : agreementConsentAutoCharge // ignore: cast_nullable_to_non_nullable
              as AgreementConsentAutoCharge?,
      servicesTariffs: freezed == servicesTariffs
          ? _value.servicesTariffs
          : servicesTariffs // ignore: cast_nullable_to_non_nullable
              as ServicesTariffs?,
      agreementProcessingPersonalData: freezed ==
              agreementProcessingPersonalData
          ? _value.agreementProcessingPersonalData
          : agreementProcessingPersonalData // ignore: cast_nullable_to_non_nullable
              as AgreementProcessingPersonalData?,
      informationAboutRegistrationProcedure: freezed ==
              informationAboutRegistrationProcedure
          ? _value.informationAboutRegistrationProcedure
          : informationAboutRegistrationProcedure // ignore: cast_nullable_to_non_nullable
              as InformationAboutRegistrationProcedure?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplatesImpl implements _Templates {
  const _$TemplatesImpl(
      {@JsonKey(name: 'agreementCollectiveInsurance')
      this.agreementCollectiveInsurance,
      @JsonKey(name: 'agreementCardProtection') this.agreementCardProtection,
      @JsonKey(name: 'agreementCardProtectionOffer')
      this.agreementCardProtectionOffer,
      @JsonKey(name: 'agreementCollectiveInsuranceStatement')
      this.agreementCollectiveInsuranceStatement,
      @JsonKey(name: 'agreementStayInTouchStatement')
      this.agreementStayInTouchStatement,
      @JsonKey(name: 'agreementCardProtectionStatement')
      this.agreementCardProtectionStatement,
      @JsonKey(name: 'agreementCollectiveInsuranceKid')
      this.agreementCollectiveInsuranceKid,
      @JsonKey(name: 'agreementCardProtectionKid')
      this.agreementCardProtectionKid,
      @JsonKey(name: 'loanRules') this.loanRules,
      @JsonKey(name: 'programStayInTouch') this.programStayInTouch,
      @JsonKey(name: 'programCollectiveInsurance')
      this.programCollectiveInsurance,
      @JsonKey(name: 'programCardProtection') this.programCardProtection,
      @JsonKey(name: 'agreementAd') this.agreementAd,
      @JsonKey(name: 'agreementCollectiveInsuranceOffer')
      this.agreementCollectiveInsuranceOffer,
      @JsonKey(name: 'agreementConsentAutoCharge')
      this.agreementConsentAutoCharge,
      @JsonKey(name: 'servicesTariffs') this.servicesTariffs,
      @JsonKey(name: 'agreementProcessingPersonalData')
      this.agreementProcessingPersonalData,
      @JsonKey(name: 'informationAboutRegistrationProcedure')
      this.informationAboutRegistrationProcedure});

  factory _$TemplatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplatesImplFromJson(json);

  @override
  @JsonKey(name: 'agreementCollectiveInsurance')
  final AgreementCollectiveInsurance? agreementCollectiveInsurance;
  @override
  @JsonKey(name: 'agreementCardProtection')
  final AgreementCardProtection? agreementCardProtection;
  @override
  @JsonKey(name: 'agreementCardProtectionOffer')
  final AgreementCardProtectionOffer? agreementCardProtectionOffer;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceStatement')
  final AgreementCollectiveInsuranceStatement?
      agreementCollectiveInsuranceStatement;
  @override
  @JsonKey(name: 'agreementStayInTouchStatement')
  final AgreementStayInTouchStatement? agreementStayInTouchStatement;
  @override
  @JsonKey(name: 'agreementCardProtectionStatement')
  final AgreementCardProtectionStatement? agreementCardProtectionStatement;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceKid')
  final AgreementCollectiveInsuranceKid? agreementCollectiveInsuranceKid;
  @override
  @JsonKey(name: 'agreementCardProtectionKid')
  final AgreementCardProtectionKid? agreementCardProtectionKid;
  @override
  @JsonKey(name: 'loanRules')
  final LoanRules? loanRules;
  @override
  @JsonKey(name: 'programStayInTouch')
  final ProgramStayInTouch? programStayInTouch;
  @override
  @JsonKey(name: 'programCollectiveInsurance')
  final ProgramCollectiveInsurance? programCollectiveInsurance;
  @override
  @JsonKey(name: 'programCardProtection')
  final ProgramCardProtection? programCardProtection;
  @override
  @JsonKey(name: 'agreementAd')
  final AgreementAd? agreementAd;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceOffer')
  final AgreementCollectiveInsuranceOffer? agreementCollectiveInsuranceOffer;
  @override
  @JsonKey(name: 'agreementConsentAutoCharge')
  final AgreementConsentAutoCharge? agreementConsentAutoCharge;
  @override
  @JsonKey(name: 'servicesTariffs')
  final ServicesTariffs? servicesTariffs;
  @override
  @JsonKey(name: 'agreementProcessingPersonalData')
  final AgreementProcessingPersonalData? agreementProcessingPersonalData;
  @override
  @JsonKey(name: 'informationAboutRegistrationProcedure')
  final InformationAboutRegistrationProcedure?
      informationAboutRegistrationProcedure;

  @override
  String toString() {
    return 'Templates(agreementCollectiveInsurance: $agreementCollectiveInsurance, agreementCardProtection: $agreementCardProtection, agreementCardProtectionOffer: $agreementCardProtectionOffer, agreementCollectiveInsuranceStatement: $agreementCollectiveInsuranceStatement, agreementStayInTouchStatement: $agreementStayInTouchStatement, agreementCardProtectionStatement: $agreementCardProtectionStatement, agreementCollectiveInsuranceKid: $agreementCollectiveInsuranceKid, agreementCardProtectionKid: $agreementCardProtectionKid, loanRules: $loanRules, programStayInTouch: $programStayInTouch, programCollectiveInsurance: $programCollectiveInsurance, programCardProtection: $programCardProtection, agreementAd: $agreementAd, agreementCollectiveInsuranceOffer: $agreementCollectiveInsuranceOffer, agreementConsentAutoCharge: $agreementConsentAutoCharge, servicesTariffs: $servicesTariffs, agreementProcessingPersonalData: $agreementProcessingPersonalData, informationAboutRegistrationProcedure: $informationAboutRegistrationProcedure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplatesImpl &&
            (identical(other.agreementCollectiveInsurance, agreementCollectiveInsurance) ||
                other.agreementCollectiveInsurance ==
                    agreementCollectiveInsurance) &&
            (identical(other.agreementCardProtection, agreementCardProtection) ||
                other.agreementCardProtection == agreementCardProtection) &&
            (identical(other.agreementCardProtectionOffer, agreementCardProtectionOffer) ||
                other.agreementCardProtectionOffer ==
                    agreementCardProtectionOffer) &&
            (identical(other.agreementCollectiveInsuranceStatement, agreementCollectiveInsuranceStatement) ||
                other.agreementCollectiveInsuranceStatement ==
                    agreementCollectiveInsuranceStatement) &&
            (identical(other.agreementStayInTouchStatement, agreementStayInTouchStatement) ||
                other.agreementStayInTouchStatement ==
                    agreementStayInTouchStatement) &&
            (identical(other.agreementCardProtectionStatement, agreementCardProtectionStatement) ||
                other.agreementCardProtectionStatement ==
                    agreementCardProtectionStatement) &&
            (identical(other.agreementCollectiveInsuranceKid, agreementCollectiveInsuranceKid) ||
                other.agreementCollectiveInsuranceKid ==
                    agreementCollectiveInsuranceKid) &&
            (identical(other.agreementCardProtectionKid, agreementCardProtectionKid) ||
                other.agreementCardProtectionKid ==
                    agreementCardProtectionKid) &&
            (identical(other.loanRules, loanRules) ||
                other.loanRules == loanRules) &&
            (identical(other.programStayInTouch, programStayInTouch) ||
                other.programStayInTouch == programStayInTouch) &&
            (identical(other.programCollectiveInsurance, programCollectiveInsurance) ||
                other.programCollectiveInsurance ==
                    programCollectiveInsurance) &&
            (identical(other.programCardProtection, programCardProtection) ||
                other.programCardProtection == programCardProtection) &&
            (identical(other.agreementAd, agreementAd) ||
                other.agreementAd == agreementAd) &&
            (identical(other.agreementCollectiveInsuranceOffer, agreementCollectiveInsuranceOffer) ||
                other.agreementCollectiveInsuranceOffer == agreementCollectiveInsuranceOffer) &&
            (identical(other.agreementConsentAutoCharge, agreementConsentAutoCharge) || other.agreementConsentAutoCharge == agreementConsentAutoCharge) &&
            (identical(other.servicesTariffs, servicesTariffs) || other.servicesTariffs == servicesTariffs) &&
            (identical(other.agreementProcessingPersonalData, agreementProcessingPersonalData) || other.agreementProcessingPersonalData == agreementProcessingPersonalData) &&
            (identical(other.informationAboutRegistrationProcedure, informationAboutRegistrationProcedure) || other.informationAboutRegistrationProcedure == informationAboutRegistrationProcedure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agreementCollectiveInsurance,
      agreementCardProtection,
      agreementCardProtectionOffer,
      agreementCollectiveInsuranceStatement,
      agreementStayInTouchStatement,
      agreementCardProtectionStatement,
      agreementCollectiveInsuranceKid,
      agreementCardProtectionKid,
      loanRules,
      programStayInTouch,
      programCollectiveInsurance,
      programCardProtection,
      agreementAd,
      agreementCollectiveInsuranceOffer,
      agreementConsentAutoCharge,
      servicesTariffs,
      agreementProcessingPersonalData,
      informationAboutRegistrationProcedure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplatesImplCopyWith<_$TemplatesImpl> get copyWith =>
      __$$TemplatesImplCopyWithImpl<_$TemplatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplatesImplToJson(
      this,
    );
  }
}

abstract class _Templates implements Templates {
  const factory _Templates(
      {@JsonKey(name: 'agreementCollectiveInsurance')
      final AgreementCollectiveInsurance? agreementCollectiveInsurance,
      @JsonKey(name: 'agreementCardProtection')
      final AgreementCardProtection? agreementCardProtection,
      @JsonKey(name: 'agreementCardProtectionOffer')
      final AgreementCardProtectionOffer? agreementCardProtectionOffer,
      @JsonKey(name: 'agreementCollectiveInsuranceStatement')
      final AgreementCollectiveInsuranceStatement?
          agreementCollectiveInsuranceStatement,
      @JsonKey(name: 'agreementStayInTouchStatement')
      final AgreementStayInTouchStatement? agreementStayInTouchStatement,
      @JsonKey(name: 'agreementCardProtectionStatement')
      final AgreementCardProtectionStatement? agreementCardProtectionStatement,
      @JsonKey(name: 'agreementCollectiveInsuranceKid')
      final AgreementCollectiveInsuranceKid? agreementCollectiveInsuranceKid,
      @JsonKey(name: 'agreementCardProtectionKid')
      final AgreementCardProtectionKid? agreementCardProtectionKid,
      @JsonKey(name: 'loanRules') final LoanRules? loanRules,
      @JsonKey(name: 'programStayInTouch')
      final ProgramStayInTouch? programStayInTouch,
      @JsonKey(name: 'programCollectiveInsurance')
      final ProgramCollectiveInsurance? programCollectiveInsurance,
      @JsonKey(name: 'programCardProtection')
      final ProgramCardProtection? programCardProtection,
      @JsonKey(name: 'agreementAd') final AgreementAd? agreementAd,
      @JsonKey(name: 'agreementCollectiveInsuranceOffer')
      final AgreementCollectiveInsuranceOffer?
          agreementCollectiveInsuranceOffer,
      @JsonKey(name: 'agreementConsentAutoCharge')
      final AgreementConsentAutoCharge? agreementConsentAutoCharge,
      @JsonKey(name: 'servicesTariffs') final ServicesTariffs? servicesTariffs,
      @JsonKey(name: 'agreementProcessingPersonalData')
      final AgreementProcessingPersonalData? agreementProcessingPersonalData,
      @JsonKey(name: 'informationAboutRegistrationProcedure')
      final InformationAboutRegistrationProcedure?
          informationAboutRegistrationProcedure}) = _$TemplatesImpl;

  factory _Templates.fromJson(Map<String, dynamic> json) =
      _$TemplatesImpl.fromJson;

  @override
  @JsonKey(name: 'agreementCollectiveInsurance')
  AgreementCollectiveInsurance? get agreementCollectiveInsurance;
  @override
  @JsonKey(name: 'agreementCardProtection')
  AgreementCardProtection? get agreementCardProtection;
  @override
  @JsonKey(name: 'agreementCardProtectionOffer')
  AgreementCardProtectionOffer? get agreementCardProtectionOffer;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceStatement')
  AgreementCollectiveInsuranceStatement?
      get agreementCollectiveInsuranceStatement;
  @override
  @JsonKey(name: 'agreementStayInTouchStatement')
  AgreementStayInTouchStatement? get agreementStayInTouchStatement;
  @override
  @JsonKey(name: 'agreementCardProtectionStatement')
  AgreementCardProtectionStatement? get agreementCardProtectionStatement;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceKid')
  AgreementCollectiveInsuranceKid? get agreementCollectiveInsuranceKid;
  @override
  @JsonKey(name: 'agreementCardProtectionKid')
  AgreementCardProtectionKid? get agreementCardProtectionKid;
  @override
  @JsonKey(name: 'loanRules')
  LoanRules? get loanRules;
  @override
  @JsonKey(name: 'programStayInTouch')
  ProgramStayInTouch? get programStayInTouch;
  @override
  @JsonKey(name: 'programCollectiveInsurance')
  ProgramCollectiveInsurance? get programCollectiveInsurance;
  @override
  @JsonKey(name: 'programCardProtection')
  ProgramCardProtection? get programCardProtection;
  @override
  @JsonKey(name: 'agreementAd')
  AgreementAd? get agreementAd;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceOffer')
  AgreementCollectiveInsuranceOffer? get agreementCollectiveInsuranceOffer;
  @override
  @JsonKey(name: 'agreementConsentAutoCharge')
  AgreementConsentAutoCharge? get agreementConsentAutoCharge;
  @override
  @JsonKey(name: 'servicesTariffs')
  ServicesTariffs? get servicesTariffs;
  @override
  @JsonKey(name: 'agreementProcessingPersonalData')
  AgreementProcessingPersonalData? get agreementProcessingPersonalData;
  @override
  @JsonKey(name: 'informationAboutRegistrationProcedure')
  InformationAboutRegistrationProcedure?
      get informationAboutRegistrationProcedure;
  @override
  @JsonKey(ignore: true)
  _$$TemplatesImplCopyWith<_$TemplatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgreementCollectiveInsurance _$AgreementCollectiveInsuranceFromJson(
    Map<String, dynamic> json) {
  return _AgreementCollectiveInsurance.fromJson(json);
}

/// @nodoc
mixin _$AgreementCollectiveInsurance {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementCollectiveInsuranceCopyWith<AgreementCollectiveInsurance>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementCollectiveInsuranceCopyWith<$Res> {
  factory $AgreementCollectiveInsuranceCopyWith(
          AgreementCollectiveInsurance value,
          $Res Function(AgreementCollectiveInsurance) then) =
      _$AgreementCollectiveInsuranceCopyWithImpl<$Res,
          AgreementCollectiveInsurance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementCollectiveInsuranceCopyWithImpl<$Res,
        $Val extends AgreementCollectiveInsurance>
    implements $AgreementCollectiveInsuranceCopyWith<$Res> {
  _$AgreementCollectiveInsuranceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementCollectiveInsuranceImplCopyWith<$Res>
    implements $AgreementCollectiveInsuranceCopyWith<$Res> {
  factory _$$AgreementCollectiveInsuranceImplCopyWith(
          _$AgreementCollectiveInsuranceImpl value,
          $Res Function(_$AgreementCollectiveInsuranceImpl) then) =
      __$$AgreementCollectiveInsuranceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementCollectiveInsuranceImplCopyWithImpl<$Res>
    extends _$AgreementCollectiveInsuranceCopyWithImpl<$Res,
        _$AgreementCollectiveInsuranceImpl>
    implements _$$AgreementCollectiveInsuranceImplCopyWith<$Res> {
  __$$AgreementCollectiveInsuranceImplCopyWithImpl(
      _$AgreementCollectiveInsuranceImpl _value,
      $Res Function(_$AgreementCollectiveInsuranceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementCollectiveInsuranceImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementCollectiveInsuranceImpl
    implements _AgreementCollectiveInsurance {
  const _$AgreementCollectiveInsuranceImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementCollectiveInsuranceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgreementCollectiveInsuranceImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementCollectiveInsurance(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementCollectiveInsuranceImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementCollectiveInsuranceImplCopyWith<
          _$AgreementCollectiveInsuranceImpl>
      get copyWith => __$$AgreementCollectiveInsuranceImplCopyWithImpl<
          _$AgreementCollectiveInsuranceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementCollectiveInsuranceImplToJson(
      this,
    );
  }
}

abstract class _AgreementCollectiveInsurance
    implements AgreementCollectiveInsurance {
  const factory _AgreementCollectiveInsurance(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementCollectiveInsuranceImpl;

  factory _AgreementCollectiveInsurance.fromJson(Map<String, dynamic> json) =
      _$AgreementCollectiveInsuranceImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementCollectiveInsuranceImplCopyWith<
          _$AgreementCollectiveInsuranceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgreementCardProtection _$AgreementCardProtectionFromJson(
    Map<String, dynamic> json) {
  return _AgreementCardProtection.fromJson(json);
}

/// @nodoc
mixin _$AgreementCardProtection {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementCardProtectionCopyWith<AgreementCardProtection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementCardProtectionCopyWith<$Res> {
  factory $AgreementCardProtectionCopyWith(AgreementCardProtection value,
          $Res Function(AgreementCardProtection) then) =
      _$AgreementCardProtectionCopyWithImpl<$Res, AgreementCardProtection>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementCardProtectionCopyWithImpl<$Res,
        $Val extends AgreementCardProtection>
    implements $AgreementCardProtectionCopyWith<$Res> {
  _$AgreementCardProtectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementCardProtectionImplCopyWith<$Res>
    implements $AgreementCardProtectionCopyWith<$Res> {
  factory _$$AgreementCardProtectionImplCopyWith(
          _$AgreementCardProtectionImpl value,
          $Res Function(_$AgreementCardProtectionImpl) then) =
      __$$AgreementCardProtectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementCardProtectionImplCopyWithImpl<$Res>
    extends _$AgreementCardProtectionCopyWithImpl<$Res,
        _$AgreementCardProtectionImpl>
    implements _$$AgreementCardProtectionImplCopyWith<$Res> {
  __$$AgreementCardProtectionImplCopyWithImpl(
      _$AgreementCardProtectionImpl _value,
      $Res Function(_$AgreementCardProtectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementCardProtectionImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementCardProtectionImpl implements _AgreementCardProtection {
  const _$AgreementCardProtectionImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementCardProtectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgreementCardProtectionImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementCardProtection(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementCardProtectionImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementCardProtectionImplCopyWith<_$AgreementCardProtectionImpl>
      get copyWith => __$$AgreementCardProtectionImplCopyWithImpl<
          _$AgreementCardProtectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementCardProtectionImplToJson(
      this,
    );
  }
}

abstract class _AgreementCardProtection implements AgreementCardProtection {
  const factory _AgreementCardProtection(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementCardProtectionImpl;

  factory _AgreementCardProtection.fromJson(Map<String, dynamic> json) =
      _$AgreementCardProtectionImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementCardProtectionImplCopyWith<_$AgreementCardProtectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgreementCardProtectionOffer _$AgreementCardProtectionOfferFromJson(
    Map<String, dynamic> json) {
  return _AgreementCardProtectionOffer.fromJson(json);
}

/// @nodoc
mixin _$AgreementCardProtectionOffer {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementCardProtectionOfferCopyWith<AgreementCardProtectionOffer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementCardProtectionOfferCopyWith<$Res> {
  factory $AgreementCardProtectionOfferCopyWith(
          AgreementCardProtectionOffer value,
          $Res Function(AgreementCardProtectionOffer) then) =
      _$AgreementCardProtectionOfferCopyWithImpl<$Res,
          AgreementCardProtectionOffer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementCardProtectionOfferCopyWithImpl<$Res,
        $Val extends AgreementCardProtectionOffer>
    implements $AgreementCardProtectionOfferCopyWith<$Res> {
  _$AgreementCardProtectionOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementCardProtectionOfferImplCopyWith<$Res>
    implements $AgreementCardProtectionOfferCopyWith<$Res> {
  factory _$$AgreementCardProtectionOfferImplCopyWith(
          _$AgreementCardProtectionOfferImpl value,
          $Res Function(_$AgreementCardProtectionOfferImpl) then) =
      __$$AgreementCardProtectionOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementCardProtectionOfferImplCopyWithImpl<$Res>
    extends _$AgreementCardProtectionOfferCopyWithImpl<$Res,
        _$AgreementCardProtectionOfferImpl>
    implements _$$AgreementCardProtectionOfferImplCopyWith<$Res> {
  __$$AgreementCardProtectionOfferImplCopyWithImpl(
      _$AgreementCardProtectionOfferImpl _value,
      $Res Function(_$AgreementCardProtectionOfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementCardProtectionOfferImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementCardProtectionOfferImpl
    implements _AgreementCardProtectionOffer {
  const _$AgreementCardProtectionOfferImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementCardProtectionOfferImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgreementCardProtectionOfferImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementCardProtectionOffer(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementCardProtectionOfferImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementCardProtectionOfferImplCopyWith<
          _$AgreementCardProtectionOfferImpl>
      get copyWith => __$$AgreementCardProtectionOfferImplCopyWithImpl<
          _$AgreementCardProtectionOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementCardProtectionOfferImplToJson(
      this,
    );
  }
}

abstract class _AgreementCardProtectionOffer
    implements AgreementCardProtectionOffer {
  const factory _AgreementCardProtectionOffer(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementCardProtectionOfferImpl;

  factory _AgreementCardProtectionOffer.fromJson(Map<String, dynamic> json) =
      _$AgreementCardProtectionOfferImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementCardProtectionOfferImplCopyWith<
          _$AgreementCardProtectionOfferImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgreementCollectiveInsuranceStatement
    _$AgreementCollectiveInsuranceStatementFromJson(Map<String, dynamic> json) {
  return _AgreementCollectiveInsuranceStatement.fromJson(json);
}

/// @nodoc
mixin _$AgreementCollectiveInsuranceStatement {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementCollectiveInsuranceStatementCopyWith<
          AgreementCollectiveInsuranceStatement>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementCollectiveInsuranceStatementCopyWith<$Res> {
  factory $AgreementCollectiveInsuranceStatementCopyWith(
          AgreementCollectiveInsuranceStatement value,
          $Res Function(AgreementCollectiveInsuranceStatement) then) =
      _$AgreementCollectiveInsuranceStatementCopyWithImpl<$Res,
          AgreementCollectiveInsuranceStatement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementCollectiveInsuranceStatementCopyWithImpl<$Res,
        $Val extends AgreementCollectiveInsuranceStatement>
    implements $AgreementCollectiveInsuranceStatementCopyWith<$Res> {
  _$AgreementCollectiveInsuranceStatementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementCollectiveInsuranceStatementImplCopyWith<$Res>
    implements $AgreementCollectiveInsuranceStatementCopyWith<$Res> {
  factory _$$AgreementCollectiveInsuranceStatementImplCopyWith(
          _$AgreementCollectiveInsuranceStatementImpl value,
          $Res Function(_$AgreementCollectiveInsuranceStatementImpl) then) =
      __$$AgreementCollectiveInsuranceStatementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementCollectiveInsuranceStatementImplCopyWithImpl<$Res>
    extends _$AgreementCollectiveInsuranceStatementCopyWithImpl<$Res,
        _$AgreementCollectiveInsuranceStatementImpl>
    implements _$$AgreementCollectiveInsuranceStatementImplCopyWith<$Res> {
  __$$AgreementCollectiveInsuranceStatementImplCopyWithImpl(
      _$AgreementCollectiveInsuranceStatementImpl _value,
      $Res Function(_$AgreementCollectiveInsuranceStatementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementCollectiveInsuranceStatementImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementCollectiveInsuranceStatementImpl
    implements _AgreementCollectiveInsuranceStatement {
  const _$AgreementCollectiveInsuranceStatementImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementCollectiveInsuranceStatementImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgreementCollectiveInsuranceStatementImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementCollectiveInsuranceStatement(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementCollectiveInsuranceStatementImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementCollectiveInsuranceStatementImplCopyWith<
          _$AgreementCollectiveInsuranceStatementImpl>
      get copyWith => __$$AgreementCollectiveInsuranceStatementImplCopyWithImpl<
          _$AgreementCollectiveInsuranceStatementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementCollectiveInsuranceStatementImplToJson(
      this,
    );
  }
}

abstract class _AgreementCollectiveInsuranceStatement
    implements AgreementCollectiveInsuranceStatement {
  const factory _AgreementCollectiveInsuranceStatement(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementCollectiveInsuranceStatementImpl;

  factory _AgreementCollectiveInsuranceStatement.fromJson(
          Map<String, dynamic> json) =
      _$AgreementCollectiveInsuranceStatementImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementCollectiveInsuranceStatementImplCopyWith<
          _$AgreementCollectiveInsuranceStatementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgreementStayInTouchStatement _$AgreementStayInTouchStatementFromJson(
    Map<String, dynamic> json) {
  return _AgreementStayInTouchStatement.fromJson(json);
}

/// @nodoc
mixin _$AgreementStayInTouchStatement {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementStayInTouchStatementCopyWith<AgreementStayInTouchStatement>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementStayInTouchStatementCopyWith<$Res> {
  factory $AgreementStayInTouchStatementCopyWith(
          AgreementStayInTouchStatement value,
          $Res Function(AgreementStayInTouchStatement) then) =
      _$AgreementStayInTouchStatementCopyWithImpl<$Res,
          AgreementStayInTouchStatement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementStayInTouchStatementCopyWithImpl<$Res,
        $Val extends AgreementStayInTouchStatement>
    implements $AgreementStayInTouchStatementCopyWith<$Res> {
  _$AgreementStayInTouchStatementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementStayInTouchStatementImplCopyWith<$Res>
    implements $AgreementStayInTouchStatementCopyWith<$Res> {
  factory _$$AgreementStayInTouchStatementImplCopyWith(
          _$AgreementStayInTouchStatementImpl value,
          $Res Function(_$AgreementStayInTouchStatementImpl) then) =
      __$$AgreementStayInTouchStatementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementStayInTouchStatementImplCopyWithImpl<$Res>
    extends _$AgreementStayInTouchStatementCopyWithImpl<$Res,
        _$AgreementStayInTouchStatementImpl>
    implements _$$AgreementStayInTouchStatementImplCopyWith<$Res> {
  __$$AgreementStayInTouchStatementImplCopyWithImpl(
      _$AgreementStayInTouchStatementImpl _value,
      $Res Function(_$AgreementStayInTouchStatementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementStayInTouchStatementImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementStayInTouchStatementImpl
    implements _AgreementStayInTouchStatement {
  const _$AgreementStayInTouchStatementImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementStayInTouchStatementImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgreementStayInTouchStatementImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementStayInTouchStatement(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementStayInTouchStatementImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementStayInTouchStatementImplCopyWith<
          _$AgreementStayInTouchStatementImpl>
      get copyWith => __$$AgreementStayInTouchStatementImplCopyWithImpl<
          _$AgreementStayInTouchStatementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementStayInTouchStatementImplToJson(
      this,
    );
  }
}

abstract class _AgreementStayInTouchStatement
    implements AgreementStayInTouchStatement {
  const factory _AgreementStayInTouchStatement(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementStayInTouchStatementImpl;

  factory _AgreementStayInTouchStatement.fromJson(Map<String, dynamic> json) =
      _$AgreementStayInTouchStatementImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementStayInTouchStatementImplCopyWith<
          _$AgreementStayInTouchStatementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgreementCardProtectionStatement _$AgreementCardProtectionStatementFromJson(
    Map<String, dynamic> json) {
  return _AgreementCardProtectionStatement.fromJson(json);
}

/// @nodoc
mixin _$AgreementCardProtectionStatement {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementCardProtectionStatementCopyWith<AgreementCardProtectionStatement>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementCardProtectionStatementCopyWith<$Res> {
  factory $AgreementCardProtectionStatementCopyWith(
          AgreementCardProtectionStatement value,
          $Res Function(AgreementCardProtectionStatement) then) =
      _$AgreementCardProtectionStatementCopyWithImpl<$Res,
          AgreementCardProtectionStatement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementCardProtectionStatementCopyWithImpl<$Res,
        $Val extends AgreementCardProtectionStatement>
    implements $AgreementCardProtectionStatementCopyWith<$Res> {
  _$AgreementCardProtectionStatementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementCardProtectionStatementImplCopyWith<$Res>
    implements $AgreementCardProtectionStatementCopyWith<$Res> {
  factory _$$AgreementCardProtectionStatementImplCopyWith(
          _$AgreementCardProtectionStatementImpl value,
          $Res Function(_$AgreementCardProtectionStatementImpl) then) =
      __$$AgreementCardProtectionStatementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementCardProtectionStatementImplCopyWithImpl<$Res>
    extends _$AgreementCardProtectionStatementCopyWithImpl<$Res,
        _$AgreementCardProtectionStatementImpl>
    implements _$$AgreementCardProtectionStatementImplCopyWith<$Res> {
  __$$AgreementCardProtectionStatementImplCopyWithImpl(
      _$AgreementCardProtectionStatementImpl _value,
      $Res Function(_$AgreementCardProtectionStatementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementCardProtectionStatementImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementCardProtectionStatementImpl
    implements _AgreementCardProtectionStatement {
  const _$AgreementCardProtectionStatementImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementCardProtectionStatementImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgreementCardProtectionStatementImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementCardProtectionStatement(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementCardProtectionStatementImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementCardProtectionStatementImplCopyWith<
          _$AgreementCardProtectionStatementImpl>
      get copyWith => __$$AgreementCardProtectionStatementImplCopyWithImpl<
          _$AgreementCardProtectionStatementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementCardProtectionStatementImplToJson(
      this,
    );
  }
}

abstract class _AgreementCardProtectionStatement
    implements AgreementCardProtectionStatement {
  const factory _AgreementCardProtectionStatement(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementCardProtectionStatementImpl;

  factory _AgreementCardProtectionStatement.fromJson(
          Map<String, dynamic> json) =
      _$AgreementCardProtectionStatementImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementCardProtectionStatementImplCopyWith<
          _$AgreementCardProtectionStatementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgreementCollectiveInsuranceKid _$AgreementCollectiveInsuranceKidFromJson(
    Map<String, dynamic> json) {
  return _AgreementCollectiveInsuranceKid.fromJson(json);
}

/// @nodoc
mixin _$AgreementCollectiveInsuranceKid {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementCollectiveInsuranceKidCopyWith<AgreementCollectiveInsuranceKid>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementCollectiveInsuranceKidCopyWith<$Res> {
  factory $AgreementCollectiveInsuranceKidCopyWith(
          AgreementCollectiveInsuranceKid value,
          $Res Function(AgreementCollectiveInsuranceKid) then) =
      _$AgreementCollectiveInsuranceKidCopyWithImpl<$Res,
          AgreementCollectiveInsuranceKid>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementCollectiveInsuranceKidCopyWithImpl<$Res,
        $Val extends AgreementCollectiveInsuranceKid>
    implements $AgreementCollectiveInsuranceKidCopyWith<$Res> {
  _$AgreementCollectiveInsuranceKidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementCollectiveInsuranceKidImplCopyWith<$Res>
    implements $AgreementCollectiveInsuranceKidCopyWith<$Res> {
  factory _$$AgreementCollectiveInsuranceKidImplCopyWith(
          _$AgreementCollectiveInsuranceKidImpl value,
          $Res Function(_$AgreementCollectiveInsuranceKidImpl) then) =
      __$$AgreementCollectiveInsuranceKidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementCollectiveInsuranceKidImplCopyWithImpl<$Res>
    extends _$AgreementCollectiveInsuranceKidCopyWithImpl<$Res,
        _$AgreementCollectiveInsuranceKidImpl>
    implements _$$AgreementCollectiveInsuranceKidImplCopyWith<$Res> {
  __$$AgreementCollectiveInsuranceKidImplCopyWithImpl(
      _$AgreementCollectiveInsuranceKidImpl _value,
      $Res Function(_$AgreementCollectiveInsuranceKidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementCollectiveInsuranceKidImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementCollectiveInsuranceKidImpl
    implements _AgreementCollectiveInsuranceKid {
  const _$AgreementCollectiveInsuranceKidImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementCollectiveInsuranceKidImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgreementCollectiveInsuranceKidImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementCollectiveInsuranceKid(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementCollectiveInsuranceKidImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementCollectiveInsuranceKidImplCopyWith<
          _$AgreementCollectiveInsuranceKidImpl>
      get copyWith => __$$AgreementCollectiveInsuranceKidImplCopyWithImpl<
          _$AgreementCollectiveInsuranceKidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementCollectiveInsuranceKidImplToJson(
      this,
    );
  }
}

abstract class _AgreementCollectiveInsuranceKid
    implements AgreementCollectiveInsuranceKid {
  const factory _AgreementCollectiveInsuranceKid(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementCollectiveInsuranceKidImpl;

  factory _AgreementCollectiveInsuranceKid.fromJson(Map<String, dynamic> json) =
      _$AgreementCollectiveInsuranceKidImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementCollectiveInsuranceKidImplCopyWith<
          _$AgreementCollectiveInsuranceKidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgreementCardProtectionKid _$AgreementCardProtectionKidFromJson(
    Map<String, dynamic> json) {
  return _AgreementCardProtectionKid.fromJson(json);
}

/// @nodoc
mixin _$AgreementCardProtectionKid {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementCardProtectionKidCopyWith<AgreementCardProtectionKid>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementCardProtectionKidCopyWith<$Res> {
  factory $AgreementCardProtectionKidCopyWith(AgreementCardProtectionKid value,
          $Res Function(AgreementCardProtectionKid) then) =
      _$AgreementCardProtectionKidCopyWithImpl<$Res,
          AgreementCardProtectionKid>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementCardProtectionKidCopyWithImpl<$Res,
        $Val extends AgreementCardProtectionKid>
    implements $AgreementCardProtectionKidCopyWith<$Res> {
  _$AgreementCardProtectionKidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementCardProtectionKidImplCopyWith<$Res>
    implements $AgreementCardProtectionKidCopyWith<$Res> {
  factory _$$AgreementCardProtectionKidImplCopyWith(
          _$AgreementCardProtectionKidImpl value,
          $Res Function(_$AgreementCardProtectionKidImpl) then) =
      __$$AgreementCardProtectionKidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementCardProtectionKidImplCopyWithImpl<$Res>
    extends _$AgreementCardProtectionKidCopyWithImpl<$Res,
        _$AgreementCardProtectionKidImpl>
    implements _$$AgreementCardProtectionKidImplCopyWith<$Res> {
  __$$AgreementCardProtectionKidImplCopyWithImpl(
      _$AgreementCardProtectionKidImpl _value,
      $Res Function(_$AgreementCardProtectionKidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementCardProtectionKidImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementCardProtectionKidImpl implements _AgreementCardProtectionKid {
  const _$AgreementCardProtectionKidImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementCardProtectionKidImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgreementCardProtectionKidImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementCardProtectionKid(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementCardProtectionKidImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementCardProtectionKidImplCopyWith<_$AgreementCardProtectionKidImpl>
      get copyWith => __$$AgreementCardProtectionKidImplCopyWithImpl<
          _$AgreementCardProtectionKidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementCardProtectionKidImplToJson(
      this,
    );
  }
}

abstract class _AgreementCardProtectionKid
    implements AgreementCardProtectionKid {
  const factory _AgreementCardProtectionKid(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementCardProtectionKidImpl;

  factory _AgreementCardProtectionKid.fromJson(Map<String, dynamic> json) =
      _$AgreementCardProtectionKidImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementCardProtectionKidImplCopyWith<_$AgreementCardProtectionKidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoanRules _$LoanRulesFromJson(Map<String, dynamic> json) {
  return _LoanRules.fromJson(json);
}

/// @nodoc
mixin _$LoanRules {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanRulesCopyWith<LoanRules> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanRulesCopyWith<$Res> {
  factory $LoanRulesCopyWith(LoanRules value, $Res Function(LoanRules) then) =
      _$LoanRulesCopyWithImpl<$Res, LoanRules>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$LoanRulesCopyWithImpl<$Res, $Val extends LoanRules>
    implements $LoanRulesCopyWith<$Res> {
  _$LoanRulesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanRulesImplCopyWith<$Res>
    implements $LoanRulesCopyWith<$Res> {
  factory _$$LoanRulesImplCopyWith(
          _$LoanRulesImpl value, $Res Function(_$LoanRulesImpl) then) =
      __$$LoanRulesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$LoanRulesImplCopyWithImpl<$Res>
    extends _$LoanRulesCopyWithImpl<$Res, _$LoanRulesImpl>
    implements _$$LoanRulesImplCopyWith<$Res> {
  __$$LoanRulesImplCopyWithImpl(
      _$LoanRulesImpl _value, $Res Function(_$LoanRulesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$LoanRulesImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanRulesImpl implements _LoanRules {
  const _$LoanRulesImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$LoanRulesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanRulesImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'LoanRules(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanRulesImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanRulesImplCopyWith<_$LoanRulesImpl> get copyWith =>
      __$$LoanRulesImplCopyWithImpl<_$LoanRulesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanRulesImplToJson(
      this,
    );
  }
}

abstract class _LoanRules implements LoanRules {
  const factory _LoanRules(
      {@JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'title') final String? title}) = _$LoanRulesImpl;

  factory _LoanRules.fromJson(Map<String, dynamic> json) =
      _$LoanRulesImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$LoanRulesImplCopyWith<_$LoanRulesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramStayInTouch _$ProgramStayInTouchFromJson(Map<String, dynamic> json) {
  return _ProgramStayInTouch.fromJson(json);
}

/// @nodoc
mixin _$ProgramStayInTouch {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramStayInTouchCopyWith<ProgramStayInTouch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramStayInTouchCopyWith<$Res> {
  factory $ProgramStayInTouchCopyWith(
          ProgramStayInTouch value, $Res Function(ProgramStayInTouch) then) =
      _$ProgramStayInTouchCopyWithImpl<$Res, ProgramStayInTouch>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$ProgramStayInTouchCopyWithImpl<$Res, $Val extends ProgramStayInTouch>
    implements $ProgramStayInTouchCopyWith<$Res> {
  _$ProgramStayInTouchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramStayInTouchImplCopyWith<$Res>
    implements $ProgramStayInTouchCopyWith<$Res> {
  factory _$$ProgramStayInTouchImplCopyWith(_$ProgramStayInTouchImpl value,
          $Res Function(_$ProgramStayInTouchImpl) then) =
      __$$ProgramStayInTouchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$ProgramStayInTouchImplCopyWithImpl<$Res>
    extends _$ProgramStayInTouchCopyWithImpl<$Res, _$ProgramStayInTouchImpl>
    implements _$$ProgramStayInTouchImplCopyWith<$Res> {
  __$$ProgramStayInTouchImplCopyWithImpl(_$ProgramStayInTouchImpl _value,
      $Res Function(_$ProgramStayInTouchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$ProgramStayInTouchImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramStayInTouchImpl implements _ProgramStayInTouch {
  const _$ProgramStayInTouchImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$ProgramStayInTouchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramStayInTouchImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'ProgramStayInTouch(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStayInTouchImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStayInTouchImplCopyWith<_$ProgramStayInTouchImpl> get copyWith =>
      __$$ProgramStayInTouchImplCopyWithImpl<_$ProgramStayInTouchImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramStayInTouchImplToJson(
      this,
    );
  }
}

abstract class _ProgramStayInTouch implements ProgramStayInTouch {
  const factory _ProgramStayInTouch(
      {@JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'title') final String? title}) = _$ProgramStayInTouchImpl;

  factory _ProgramStayInTouch.fromJson(Map<String, dynamic> json) =
      _$ProgramStayInTouchImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$ProgramStayInTouchImplCopyWith<_$ProgramStayInTouchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramCollectiveInsurance _$ProgramCollectiveInsuranceFromJson(
    Map<String, dynamic> json) {
  return _ProgramCollectiveInsurance.fromJson(json);
}

/// @nodoc
mixin _$ProgramCollectiveInsurance {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramCollectiveInsuranceCopyWith<ProgramCollectiveInsurance>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCollectiveInsuranceCopyWith<$Res> {
  factory $ProgramCollectiveInsuranceCopyWith(ProgramCollectiveInsurance value,
          $Res Function(ProgramCollectiveInsurance) then) =
      _$ProgramCollectiveInsuranceCopyWithImpl<$Res,
          ProgramCollectiveInsurance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$ProgramCollectiveInsuranceCopyWithImpl<$Res,
        $Val extends ProgramCollectiveInsurance>
    implements $ProgramCollectiveInsuranceCopyWith<$Res> {
  _$ProgramCollectiveInsuranceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramCollectiveInsuranceImplCopyWith<$Res>
    implements $ProgramCollectiveInsuranceCopyWith<$Res> {
  factory _$$ProgramCollectiveInsuranceImplCopyWith(
          _$ProgramCollectiveInsuranceImpl value,
          $Res Function(_$ProgramCollectiveInsuranceImpl) then) =
      __$$ProgramCollectiveInsuranceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$ProgramCollectiveInsuranceImplCopyWithImpl<$Res>
    extends _$ProgramCollectiveInsuranceCopyWithImpl<$Res,
        _$ProgramCollectiveInsuranceImpl>
    implements _$$ProgramCollectiveInsuranceImplCopyWith<$Res> {
  __$$ProgramCollectiveInsuranceImplCopyWithImpl(
      _$ProgramCollectiveInsuranceImpl _value,
      $Res Function(_$ProgramCollectiveInsuranceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$ProgramCollectiveInsuranceImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramCollectiveInsuranceImpl implements _ProgramCollectiveInsurance {
  const _$ProgramCollectiveInsuranceImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$ProgramCollectiveInsuranceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProgramCollectiveInsuranceImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'ProgramCollectiveInsurance(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramCollectiveInsuranceImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramCollectiveInsuranceImplCopyWith<_$ProgramCollectiveInsuranceImpl>
      get copyWith => __$$ProgramCollectiveInsuranceImplCopyWithImpl<
          _$ProgramCollectiveInsuranceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramCollectiveInsuranceImplToJson(
      this,
    );
  }
}

abstract class _ProgramCollectiveInsurance
    implements ProgramCollectiveInsurance {
  const factory _ProgramCollectiveInsurance(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$ProgramCollectiveInsuranceImpl;

  factory _ProgramCollectiveInsurance.fromJson(Map<String, dynamic> json) =
      _$ProgramCollectiveInsuranceImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$ProgramCollectiveInsuranceImplCopyWith<_$ProgramCollectiveInsuranceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProgramCardProtection _$ProgramCardProtectionFromJson(
    Map<String, dynamic> json) {
  return _ProgramCardProtection.fromJson(json);
}

/// @nodoc
mixin _$ProgramCardProtection {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramCardProtectionCopyWith<ProgramCardProtection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCardProtectionCopyWith<$Res> {
  factory $ProgramCardProtectionCopyWith(ProgramCardProtection value,
          $Res Function(ProgramCardProtection) then) =
      _$ProgramCardProtectionCopyWithImpl<$Res, ProgramCardProtection>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$ProgramCardProtectionCopyWithImpl<$Res,
        $Val extends ProgramCardProtection>
    implements $ProgramCardProtectionCopyWith<$Res> {
  _$ProgramCardProtectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramCardProtectionImplCopyWith<$Res>
    implements $ProgramCardProtectionCopyWith<$Res> {
  factory _$$ProgramCardProtectionImplCopyWith(
          _$ProgramCardProtectionImpl value,
          $Res Function(_$ProgramCardProtectionImpl) then) =
      __$$ProgramCardProtectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$ProgramCardProtectionImplCopyWithImpl<$Res>
    extends _$ProgramCardProtectionCopyWithImpl<$Res,
        _$ProgramCardProtectionImpl>
    implements _$$ProgramCardProtectionImplCopyWith<$Res> {
  __$$ProgramCardProtectionImplCopyWithImpl(_$ProgramCardProtectionImpl _value,
      $Res Function(_$ProgramCardProtectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$ProgramCardProtectionImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramCardProtectionImpl implements _ProgramCardProtection {
  const _$ProgramCardProtectionImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$ProgramCardProtectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramCardProtectionImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'ProgramCardProtection(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramCardProtectionImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramCardProtectionImplCopyWith<_$ProgramCardProtectionImpl>
      get copyWith => __$$ProgramCardProtectionImplCopyWithImpl<
          _$ProgramCardProtectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramCardProtectionImplToJson(
      this,
    );
  }
}

abstract class _ProgramCardProtection implements ProgramCardProtection {
  const factory _ProgramCardProtection(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$ProgramCardProtectionImpl;

  factory _ProgramCardProtection.fromJson(Map<String, dynamic> json) =
      _$ProgramCardProtectionImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$ProgramCardProtectionImplCopyWith<_$ProgramCardProtectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgreementAd _$AgreementAdFromJson(Map<String, dynamic> json) {
  return _AgreementAd.fromJson(json);
}

/// @nodoc
mixin _$AgreementAd {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementAdCopyWith<AgreementAd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementAdCopyWith<$Res> {
  factory $AgreementAdCopyWith(
          AgreementAd value, $Res Function(AgreementAd) then) =
      _$AgreementAdCopyWithImpl<$Res, AgreementAd>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementAdCopyWithImpl<$Res, $Val extends AgreementAd>
    implements $AgreementAdCopyWith<$Res> {
  _$AgreementAdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementAdImplCopyWith<$Res>
    implements $AgreementAdCopyWith<$Res> {
  factory _$$AgreementAdImplCopyWith(
          _$AgreementAdImpl value, $Res Function(_$AgreementAdImpl) then) =
      __$$AgreementAdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementAdImplCopyWithImpl<$Res>
    extends _$AgreementAdCopyWithImpl<$Res, _$AgreementAdImpl>
    implements _$$AgreementAdImplCopyWith<$Res> {
  __$$AgreementAdImplCopyWithImpl(
      _$AgreementAdImpl _value, $Res Function(_$AgreementAdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementAdImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementAdImpl implements _AgreementAd {
  const _$AgreementAdImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementAdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgreementAdImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementAd(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementAdImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementAdImplCopyWith<_$AgreementAdImpl> get copyWith =>
      __$$AgreementAdImplCopyWithImpl<_$AgreementAdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementAdImplToJson(
      this,
    );
  }
}

abstract class _AgreementAd implements AgreementAd {
  const factory _AgreementAd(
      {@JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'title') final String? title}) = _$AgreementAdImpl;

  factory _AgreementAd.fromJson(Map<String, dynamic> json) =
      _$AgreementAdImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementAdImplCopyWith<_$AgreementAdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgreementCollectiveInsuranceOffer _$AgreementCollectiveInsuranceOfferFromJson(
    Map<String, dynamic> json) {
  return _AgreementCollectiveInsuranceOffer.fromJson(json);
}

/// @nodoc
mixin _$AgreementCollectiveInsuranceOffer {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementCollectiveInsuranceOfferCopyWith<AgreementCollectiveInsuranceOffer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementCollectiveInsuranceOfferCopyWith<$Res> {
  factory $AgreementCollectiveInsuranceOfferCopyWith(
          AgreementCollectiveInsuranceOffer value,
          $Res Function(AgreementCollectiveInsuranceOffer) then) =
      _$AgreementCollectiveInsuranceOfferCopyWithImpl<$Res,
          AgreementCollectiveInsuranceOffer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementCollectiveInsuranceOfferCopyWithImpl<$Res,
        $Val extends AgreementCollectiveInsuranceOffer>
    implements $AgreementCollectiveInsuranceOfferCopyWith<$Res> {
  _$AgreementCollectiveInsuranceOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementCollectiveInsuranceOfferImplCopyWith<$Res>
    implements $AgreementCollectiveInsuranceOfferCopyWith<$Res> {
  factory _$$AgreementCollectiveInsuranceOfferImplCopyWith(
          _$AgreementCollectiveInsuranceOfferImpl value,
          $Res Function(_$AgreementCollectiveInsuranceOfferImpl) then) =
      __$$AgreementCollectiveInsuranceOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementCollectiveInsuranceOfferImplCopyWithImpl<$Res>
    extends _$AgreementCollectiveInsuranceOfferCopyWithImpl<$Res,
        _$AgreementCollectiveInsuranceOfferImpl>
    implements _$$AgreementCollectiveInsuranceOfferImplCopyWith<$Res> {
  __$$AgreementCollectiveInsuranceOfferImplCopyWithImpl(
      _$AgreementCollectiveInsuranceOfferImpl _value,
      $Res Function(_$AgreementCollectiveInsuranceOfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementCollectiveInsuranceOfferImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementCollectiveInsuranceOfferImpl
    implements _AgreementCollectiveInsuranceOffer {
  const _$AgreementCollectiveInsuranceOfferImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementCollectiveInsuranceOfferImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgreementCollectiveInsuranceOfferImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementCollectiveInsuranceOffer(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementCollectiveInsuranceOfferImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementCollectiveInsuranceOfferImplCopyWith<
          _$AgreementCollectiveInsuranceOfferImpl>
      get copyWith => __$$AgreementCollectiveInsuranceOfferImplCopyWithImpl<
          _$AgreementCollectiveInsuranceOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementCollectiveInsuranceOfferImplToJson(
      this,
    );
  }
}

abstract class _AgreementCollectiveInsuranceOffer
    implements AgreementCollectiveInsuranceOffer {
  const factory _AgreementCollectiveInsuranceOffer(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementCollectiveInsuranceOfferImpl;

  factory _AgreementCollectiveInsuranceOffer.fromJson(
          Map<String, dynamic> json) =
      _$AgreementCollectiveInsuranceOfferImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementCollectiveInsuranceOfferImplCopyWith<
          _$AgreementCollectiveInsuranceOfferImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgreementConsentAutoCharge _$AgreementConsentAutoChargeFromJson(
    Map<String, dynamic> json) {
  return _AgreementConsentAutoCharge.fromJson(json);
}

/// @nodoc
mixin _$AgreementConsentAutoCharge {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementConsentAutoChargeCopyWith<AgreementConsentAutoCharge>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementConsentAutoChargeCopyWith<$Res> {
  factory $AgreementConsentAutoChargeCopyWith(AgreementConsentAutoCharge value,
          $Res Function(AgreementConsentAutoCharge) then) =
      _$AgreementConsentAutoChargeCopyWithImpl<$Res,
          AgreementConsentAutoCharge>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementConsentAutoChargeCopyWithImpl<$Res,
        $Val extends AgreementConsentAutoCharge>
    implements $AgreementConsentAutoChargeCopyWith<$Res> {
  _$AgreementConsentAutoChargeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementConsentAutoChargeImplCopyWith<$Res>
    implements $AgreementConsentAutoChargeCopyWith<$Res> {
  factory _$$AgreementConsentAutoChargeImplCopyWith(
          _$AgreementConsentAutoChargeImpl value,
          $Res Function(_$AgreementConsentAutoChargeImpl) then) =
      __$$AgreementConsentAutoChargeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementConsentAutoChargeImplCopyWithImpl<$Res>
    extends _$AgreementConsentAutoChargeCopyWithImpl<$Res,
        _$AgreementConsentAutoChargeImpl>
    implements _$$AgreementConsentAutoChargeImplCopyWith<$Res> {
  __$$AgreementConsentAutoChargeImplCopyWithImpl(
      _$AgreementConsentAutoChargeImpl _value,
      $Res Function(_$AgreementConsentAutoChargeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementConsentAutoChargeImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementConsentAutoChargeImpl implements _AgreementConsentAutoCharge {
  const _$AgreementConsentAutoChargeImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementConsentAutoChargeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgreementConsentAutoChargeImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementConsentAutoCharge(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementConsentAutoChargeImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementConsentAutoChargeImplCopyWith<_$AgreementConsentAutoChargeImpl>
      get copyWith => __$$AgreementConsentAutoChargeImplCopyWithImpl<
          _$AgreementConsentAutoChargeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementConsentAutoChargeImplToJson(
      this,
    );
  }
}

abstract class _AgreementConsentAutoCharge
    implements AgreementConsentAutoCharge {
  const factory _AgreementConsentAutoCharge(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementConsentAutoChargeImpl;

  factory _AgreementConsentAutoCharge.fromJson(Map<String, dynamic> json) =
      _$AgreementConsentAutoChargeImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementConsentAutoChargeImplCopyWith<_$AgreementConsentAutoChargeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServicesTariffs _$ServicesTariffsFromJson(Map<String, dynamic> json) {
  return _ServicesTariffs.fromJson(json);
}

/// @nodoc
mixin _$ServicesTariffs {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicesTariffsCopyWith<ServicesTariffs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesTariffsCopyWith<$Res> {
  factory $ServicesTariffsCopyWith(
          ServicesTariffs value, $Res Function(ServicesTariffs) then) =
      _$ServicesTariffsCopyWithImpl<$Res, ServicesTariffs>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$ServicesTariffsCopyWithImpl<$Res, $Val extends ServicesTariffs>
    implements $ServicesTariffsCopyWith<$Res> {
  _$ServicesTariffsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicesTariffsImplCopyWith<$Res>
    implements $ServicesTariffsCopyWith<$Res> {
  factory _$$ServicesTariffsImplCopyWith(_$ServicesTariffsImpl value,
          $Res Function(_$ServicesTariffsImpl) then) =
      __$$ServicesTariffsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$ServicesTariffsImplCopyWithImpl<$Res>
    extends _$ServicesTariffsCopyWithImpl<$Res, _$ServicesTariffsImpl>
    implements _$$ServicesTariffsImplCopyWith<$Res> {
  __$$ServicesTariffsImplCopyWithImpl(
      _$ServicesTariffsImpl _value, $Res Function(_$ServicesTariffsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$ServicesTariffsImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicesTariffsImpl implements _ServicesTariffs {
  const _$ServicesTariffsImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$ServicesTariffsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicesTariffsImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'ServicesTariffs(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesTariffsImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesTariffsImplCopyWith<_$ServicesTariffsImpl> get copyWith =>
      __$$ServicesTariffsImplCopyWithImpl<_$ServicesTariffsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicesTariffsImplToJson(
      this,
    );
  }
}

abstract class _ServicesTariffs implements ServicesTariffs {
  const factory _ServicesTariffs(
      {@JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'title') final String? title}) = _$ServicesTariffsImpl;

  factory _ServicesTariffs.fromJson(Map<String, dynamic> json) =
      _$ServicesTariffsImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$ServicesTariffsImplCopyWith<_$ServicesTariffsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgreementProcessingPersonalData _$AgreementProcessingPersonalDataFromJson(
    Map<String, dynamic> json) {
  return _AgreementProcessingPersonalData.fromJson(json);
}

/// @nodoc
mixin _$AgreementProcessingPersonalData {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementProcessingPersonalDataCopyWith<AgreementProcessingPersonalData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementProcessingPersonalDataCopyWith<$Res> {
  factory $AgreementProcessingPersonalDataCopyWith(
          AgreementProcessingPersonalData value,
          $Res Function(AgreementProcessingPersonalData) then) =
      _$AgreementProcessingPersonalDataCopyWithImpl<$Res,
          AgreementProcessingPersonalData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$AgreementProcessingPersonalDataCopyWithImpl<$Res,
        $Val extends AgreementProcessingPersonalData>
    implements $AgreementProcessingPersonalDataCopyWith<$Res> {
  _$AgreementProcessingPersonalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementProcessingPersonalDataImplCopyWith<$Res>
    implements $AgreementProcessingPersonalDataCopyWith<$Res> {
  factory _$$AgreementProcessingPersonalDataImplCopyWith(
          _$AgreementProcessingPersonalDataImpl value,
          $Res Function(_$AgreementProcessingPersonalDataImpl) then) =
      __$$AgreementProcessingPersonalDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$AgreementProcessingPersonalDataImplCopyWithImpl<$Res>
    extends _$AgreementProcessingPersonalDataCopyWithImpl<$Res,
        _$AgreementProcessingPersonalDataImpl>
    implements _$$AgreementProcessingPersonalDataImplCopyWith<$Res> {
  __$$AgreementProcessingPersonalDataImplCopyWithImpl(
      _$AgreementProcessingPersonalDataImpl _value,
      $Res Function(_$AgreementProcessingPersonalDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AgreementProcessingPersonalDataImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementProcessingPersonalDataImpl
    implements _AgreementProcessingPersonalData {
  const _$AgreementProcessingPersonalDataImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$AgreementProcessingPersonalDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgreementProcessingPersonalDataImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'AgreementProcessingPersonalData(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementProcessingPersonalDataImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementProcessingPersonalDataImplCopyWith<
          _$AgreementProcessingPersonalDataImpl>
      get copyWith => __$$AgreementProcessingPersonalDataImplCopyWithImpl<
          _$AgreementProcessingPersonalDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementProcessingPersonalDataImplToJson(
      this,
    );
  }
}

abstract class _AgreementProcessingPersonalData
    implements AgreementProcessingPersonalData {
  const factory _AgreementProcessingPersonalData(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$AgreementProcessingPersonalDataImpl;

  factory _AgreementProcessingPersonalData.fromJson(Map<String, dynamic> json) =
      _$AgreementProcessingPersonalDataImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AgreementProcessingPersonalDataImplCopyWith<
          _$AgreementProcessingPersonalDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InformationAboutRegistrationProcedure
    _$InformationAboutRegistrationProcedureFromJson(Map<String, dynamic> json) {
  return _InformationAboutRegistrationProcedure.fromJson(json);
}

/// @nodoc
mixin _$InformationAboutRegistrationProcedure {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InformationAboutRegistrationProcedureCopyWith<
          InformationAboutRegistrationProcedure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformationAboutRegistrationProcedureCopyWith<$Res> {
  factory $InformationAboutRegistrationProcedureCopyWith(
          InformationAboutRegistrationProcedure value,
          $Res Function(InformationAboutRegistrationProcedure) then) =
      _$InformationAboutRegistrationProcedureCopyWithImpl<$Res,
          InformationAboutRegistrationProcedure>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$InformationAboutRegistrationProcedureCopyWithImpl<$Res,
        $Val extends InformationAboutRegistrationProcedure>
    implements $InformationAboutRegistrationProcedureCopyWith<$Res> {
  _$InformationAboutRegistrationProcedureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InformationAboutRegistrationProcedureImplCopyWith<$Res>
    implements $InformationAboutRegistrationProcedureCopyWith<$Res> {
  factory _$$InformationAboutRegistrationProcedureImplCopyWith(
          _$InformationAboutRegistrationProcedureImpl value,
          $Res Function(_$InformationAboutRegistrationProcedureImpl) then) =
      __$$InformationAboutRegistrationProcedureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$InformationAboutRegistrationProcedureImplCopyWithImpl<$Res>
    extends _$InformationAboutRegistrationProcedureCopyWithImpl<$Res,
        _$InformationAboutRegistrationProcedureImpl>
    implements _$$InformationAboutRegistrationProcedureImplCopyWith<$Res> {
  __$$InformationAboutRegistrationProcedureImplCopyWithImpl(
      _$InformationAboutRegistrationProcedureImpl _value,
      $Res Function(_$InformationAboutRegistrationProcedureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
  }) {
    return _then(_$InformationAboutRegistrationProcedureImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InformationAboutRegistrationProcedureImpl
    implements _InformationAboutRegistrationProcedure {
  const _$InformationAboutRegistrationProcedureImpl(
      {@JsonKey(name: 'url') this.url, @JsonKey(name: 'title') this.title});

  factory _$InformationAboutRegistrationProcedureImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InformationAboutRegistrationProcedureImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'InformationAboutRegistrationProcedure(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformationAboutRegistrationProcedureImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InformationAboutRegistrationProcedureImplCopyWith<
          _$InformationAboutRegistrationProcedureImpl>
      get copyWith => __$$InformationAboutRegistrationProcedureImplCopyWithImpl<
          _$InformationAboutRegistrationProcedureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InformationAboutRegistrationProcedureImplToJson(
      this,
    );
  }
}

abstract class _InformationAboutRegistrationProcedure
    implements InformationAboutRegistrationProcedure {
  const factory _InformationAboutRegistrationProcedure(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'title') final String? title}) =
      _$InformationAboutRegistrationProcedureImpl;

  factory _InformationAboutRegistrationProcedure.fromJson(
          Map<String, dynamic> json) =
      _$InformationAboutRegistrationProcedureImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$InformationAboutRegistrationProcedureImplCopyWith<
          _$InformationAboutRegistrationProcedureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InfoPage _$InfoPageFromJson(Map<String, dynamic> json) {
  return _InfoPage.fromJson(json);
}

/// @nodoc
mixin _$InfoPage {
  @JsonKey(name: 'redaction')
  String? get redaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoPageCopyWith<InfoPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoPageCopyWith<$Res> {
  factory $InfoPageCopyWith(InfoPage value, $Res Function(InfoPage) then) =
      _$InfoPageCopyWithImpl<$Res, InfoPage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'redaction') String? redaction,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$InfoPageCopyWithImpl<$Res, $Val extends InfoPage>
    implements $InfoPageCopyWith<$Res> {
  _$InfoPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redaction = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      redaction: freezed == redaction
          ? _value.redaction
          : redaction // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoPageImplCopyWith<$Res>
    implements $InfoPageCopyWith<$Res> {
  factory _$$InfoPageImplCopyWith(
          _$InfoPageImpl value, $Res Function(_$InfoPageImpl) then) =
      __$$InfoPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'redaction') String? redaction,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$InfoPageImplCopyWithImpl<$Res>
    extends _$InfoPageCopyWithImpl<$Res, _$InfoPageImpl>
    implements _$$InfoPageImplCopyWith<$Res> {
  __$$InfoPageImplCopyWithImpl(
      _$InfoPageImpl _value, $Res Function(_$InfoPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redaction = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$InfoPageImpl(
      redaction: freezed == redaction
          ? _value.redaction
          : redaction // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoPageImpl implements _InfoPage {
  const _$InfoPageImpl(
      {@JsonKey(name: 'redaction') this.redaction,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'url') this.url});

  factory _$InfoPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoPageImplFromJson(json);

  @override
  @JsonKey(name: 'redaction')
  final String? redaction;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'InfoPage(redaction: $redaction, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoPageImpl &&
            (identical(other.redaction, redaction) ||
                other.redaction == redaction) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, redaction, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoPageImplCopyWith<_$InfoPageImpl> get copyWith =>
      __$$InfoPageImplCopyWithImpl<_$InfoPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoPageImplToJson(
      this,
    );
  }
}

abstract class _InfoPage implements InfoPage {
  const factory _InfoPage(
      {@JsonKey(name: 'redaction') final String? redaction,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'url') final String? url}) = _$InfoPageImpl;

  factory _InfoPage.fromJson(Map<String, dynamic> json) =
      _$InfoPageImpl.fromJson;

  @override
  @JsonKey(name: 'redaction')
  String? get redaction;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$InfoPageImplCopyWith<_$InfoPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TemplatesPage _$TemplatesPageFromJson(Map<String, dynamic> json) {
  return _TemplatesPage.fromJson(json);
}

/// @nodoc
mixin _$TemplatesPage {
  @JsonKey(name: 'redaction')
  String? get redaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplatesPageCopyWith<TemplatesPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplatesPageCopyWith<$Res> {
  factory $TemplatesPageCopyWith(
          TemplatesPage value, $Res Function(TemplatesPage) then) =
      _$TemplatesPageCopyWithImpl<$Res, TemplatesPage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'redaction') String? redaction,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$TemplatesPageCopyWithImpl<$Res, $Val extends TemplatesPage>
    implements $TemplatesPageCopyWith<$Res> {
  _$TemplatesPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redaction = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      redaction: freezed == redaction
          ? _value.redaction
          : redaction // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplatesPageImplCopyWith<$Res>
    implements $TemplatesPageCopyWith<$Res> {
  factory _$$TemplatesPageImplCopyWith(
          _$TemplatesPageImpl value, $Res Function(_$TemplatesPageImpl) then) =
      __$$TemplatesPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'redaction') String? redaction,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$TemplatesPageImplCopyWithImpl<$Res>
    extends _$TemplatesPageCopyWithImpl<$Res, _$TemplatesPageImpl>
    implements _$$TemplatesPageImplCopyWith<$Res> {
  __$$TemplatesPageImplCopyWithImpl(
      _$TemplatesPageImpl _value, $Res Function(_$TemplatesPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redaction = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$TemplatesPageImpl(
      redaction: freezed == redaction
          ? _value.redaction
          : redaction // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplatesPageImpl implements _TemplatesPage {
  const _$TemplatesPageImpl(
      {@JsonKey(name: 'redaction') this.redaction,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'url') this.url});

  factory _$TemplatesPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplatesPageImplFromJson(json);

  @override
  @JsonKey(name: 'redaction')
  final String? redaction;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'TemplatesPage(redaction: $redaction, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplatesPageImpl &&
            (identical(other.redaction, redaction) ||
                other.redaction == redaction) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, redaction, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplatesPageImplCopyWith<_$TemplatesPageImpl> get copyWith =>
      __$$TemplatesPageImplCopyWithImpl<_$TemplatesPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplatesPageImplToJson(
      this,
    );
  }
}

abstract class _TemplatesPage implements TemplatesPage {
  const factory _TemplatesPage(
      {@JsonKey(name: 'redaction') final String? redaction,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'url') final String? url}) = _$TemplatesPageImpl;

  factory _TemplatesPage.fromJson(Map<String, dynamic> json) =
      _$TemplatesPageImpl.fromJson;

  @override
  @JsonKey(name: 'redaction')
  String? get redaction;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$TemplatesPageImplCopyWith<_$TemplatesPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Calc _$CalcFromJson(Map<String, dynamic> json) {
  return _Calc.fromJson(json);
}

/// @nodoc
mixin _$Calc {
  @JsonKey(name: 'tinkoff_enable')
  bool? get tinkoffEnable => throw _privateConstructorUsedError;
  @JsonKey(name: 'gosuslugi_enable')
  bool? get gosuslugiEnable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalcCopyWith<Calc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcCopyWith<$Res> {
  factory $CalcCopyWith(Calc value, $Res Function(Calc) then) =
      _$CalcCopyWithImpl<$Res, Calc>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tinkoff_enable') bool? tinkoffEnable,
      @JsonKey(name: 'gosuslugi_enable') bool? gosuslugiEnable});
}

/// @nodoc
class _$CalcCopyWithImpl<$Res, $Val extends Calc>
    implements $CalcCopyWith<$Res> {
  _$CalcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinkoffEnable = freezed,
    Object? gosuslugiEnable = freezed,
  }) {
    return _then(_value.copyWith(
      tinkoffEnable: freezed == tinkoffEnable
          ? _value.tinkoffEnable
          : tinkoffEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      gosuslugiEnable: freezed == gosuslugiEnable
          ? _value.gosuslugiEnable
          : gosuslugiEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalcImplCopyWith<$Res> implements $CalcCopyWith<$Res> {
  factory _$$CalcImplCopyWith(
          _$CalcImpl value, $Res Function(_$CalcImpl) then) =
      __$$CalcImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tinkoff_enable') bool? tinkoffEnable,
      @JsonKey(name: 'gosuslugi_enable') bool? gosuslugiEnable});
}

/// @nodoc
class __$$CalcImplCopyWithImpl<$Res>
    extends _$CalcCopyWithImpl<$Res, _$CalcImpl>
    implements _$$CalcImplCopyWith<$Res> {
  __$$CalcImplCopyWithImpl(_$CalcImpl _value, $Res Function(_$CalcImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinkoffEnable = freezed,
    Object? gosuslugiEnable = freezed,
  }) {
    return _then(_$CalcImpl(
      tinkoffEnable: freezed == tinkoffEnable
          ? _value.tinkoffEnable
          : tinkoffEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      gosuslugiEnable: freezed == gosuslugiEnable
          ? _value.gosuslugiEnable
          : gosuslugiEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalcImpl implements _Calc {
  const _$CalcImpl(
      {@JsonKey(name: 'tinkoff_enable') this.tinkoffEnable,
      @JsonKey(name: 'gosuslugi_enable') this.gosuslugiEnable});

  factory _$CalcImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalcImplFromJson(json);

  @override
  @JsonKey(name: 'tinkoff_enable')
  final bool? tinkoffEnable;
  @override
  @JsonKey(name: 'gosuslugi_enable')
  final bool? gosuslugiEnable;

  @override
  String toString() {
    return 'Calc(tinkoffEnable: $tinkoffEnable, gosuslugiEnable: $gosuslugiEnable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalcImpl &&
            (identical(other.tinkoffEnable, tinkoffEnable) ||
                other.tinkoffEnable == tinkoffEnable) &&
            (identical(other.gosuslugiEnable, gosuslugiEnable) ||
                other.gosuslugiEnable == gosuslugiEnable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tinkoffEnable, gosuslugiEnable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalcImplCopyWith<_$CalcImpl> get copyWith =>
      __$$CalcImplCopyWithImpl<_$CalcImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalcImplToJson(
      this,
    );
  }
}

abstract class _Calc implements Calc {
  const factory _Calc(
          {@JsonKey(name: 'tinkoff_enable') final bool? tinkoffEnable,
          @JsonKey(name: 'gosuslugi_enable') final bool? gosuslugiEnable}) =
      _$CalcImpl;

  factory _Calc.fromJson(Map<String, dynamic> json) = _$CalcImpl.fromJson;

  @override
  @JsonKey(name: 'tinkoff_enable')
  bool? get tinkoffEnable;
  @override
  @JsonKey(name: 'gosuslugi_enable')
  bool? get gosuslugiEnable;
  @override
  @JsonKey(ignore: true)
  _$$CalcImplCopyWith<_$CalcImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Acf _$AcfFromJson(Map<String, dynamic> json) {
  return _Acf.fromJson(json);
}

/// @nodoc
mixin _$Acf {
  @JsonKey(name: 'site_hard_banner_text')
  String? get siteHardBannerText => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_hard_link')
  String? get siteHardLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_soft_link')
  String? get siteSoftLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_hard_timeout')
  String? get siteHardTimeout => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_soft_timeout')
  String? get siteSoftTimeout => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_hard_redirect')
  List<SiteHardRedirect>? get siteHardRedirect =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'site_soft_redirect')
  List<SiteSoftRedirect>? get siteSoftRedirect =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'partners_link')
  String? get partnersLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_partner_link')
  String? get bannerPartnerLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'td_discount')
  String? get tdDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'td_promocode')
  String? get tdPromocode => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_support')
  String? get phoneSupport => throw _privateConstructorUsedError;
  @JsonKey(name: 'footer_title_work')
  String? get footerTitleWork => throw _privateConstructorUsedError;
  @JsonKey(name: 'footer_title_support')
  String? get footerTitleSupport => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_time')
  String? get workTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_days')
  String? get restDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_time_support')
  String? get workTimeSupport => throw _privateConstructorUsedError;
  @JsonKey(name: 'footer_title_email')
  String? get footerTitleEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'footer_title_social')
  String? get footerTitleSocial => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_under_footer')
  String? get textUnderFooter => throw _privateConstructorUsedError;
  @JsonKey(name: 'social')
  List<Social>? get social => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_heading')
  String? get creditHeading => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_no-active')
  String? get creditNoActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_banner_desk')
  String? get paymentBannerDesk => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_banner_mob')
  String? get paymentBannerMob => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_partners_hard')
  List<OtherPartnersHard>? get otherPartnersHard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'other_partners_soft')
  List<OtherPartnersSoft>? get otherPartnersSoft =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'rejected_by_region')
  List<RejectedByRegion>? get rejectedByRegion =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'adversite')
  Adversite? get adversite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcfCopyWith<Acf> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcfCopyWith<$Res> {
  factory $AcfCopyWith(Acf value, $Res Function(Acf) then) =
      _$AcfCopyWithImpl<$Res, Acf>;
  @useResult
  $Res call(
      {@JsonKey(name: 'site_hard_banner_text') String? siteHardBannerText,
      @JsonKey(name: 'site_hard_link') String? siteHardLink,
      @JsonKey(name: 'site_soft_link') String? siteSoftLink,
      @JsonKey(name: 'site_hard_timeout') String? siteHardTimeout,
      @JsonKey(name: 'site_soft_timeout') String? siteSoftTimeout,
      @JsonKey(name: 'site_hard_redirect')
      List<SiteHardRedirect>? siteHardRedirect,
      @JsonKey(name: 'site_soft_redirect')
      List<SiteSoftRedirect>? siteSoftRedirect,
      @JsonKey(name: 'partners_link') String? partnersLink,
      @JsonKey(name: 'banner_partner_link') String? bannerPartnerLink,
      @JsonKey(name: 'td_discount') String? tdDiscount,
      @JsonKey(name: 'td_promocode') String? tdPromocode,
      @JsonKey(name: 'phone_support') String? phoneSupport,
      @JsonKey(name: 'footer_title_work') String? footerTitleWork,
      @JsonKey(name: 'footer_title_support') String? footerTitleSupport,
      @JsonKey(name: 'work_time') String? workTime,
      @JsonKey(name: 'rest_days') String? restDays,
      @JsonKey(name: 'work_time_support') String? workTimeSupport,
      @JsonKey(name: 'footer_title_email') String? footerTitleEmail,
      @JsonKey(name: 'footer_title_social') String? footerTitleSocial,
      @JsonKey(name: 'text_under_footer') String? textUnderFooter,
      @JsonKey(name: 'social') List<Social>? social,
      @JsonKey(name: 'credit_heading') String? creditHeading,
      @JsonKey(name: 'credit_no-active') String? creditNoActive,
      @JsonKey(name: 'payment_banner_desk') String? paymentBannerDesk,
      @JsonKey(name: 'payment_banner_mob') String? paymentBannerMob,
      @JsonKey(name: 'other_partners_hard')
      List<OtherPartnersHard>? otherPartnersHard,
      @JsonKey(name: 'other_partners_soft')
      List<OtherPartnersSoft>? otherPartnersSoft,
      @JsonKey(name: 'rejected_by_region')
      List<RejectedByRegion>? rejectedByRegion,
      @JsonKey(name: 'adversite') Adversite? adversite});

  $AdversiteCopyWith<$Res>? get adversite;
}

/// @nodoc
class _$AcfCopyWithImpl<$Res, $Val extends Acf> implements $AcfCopyWith<$Res> {
  _$AcfCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteHardBannerText = freezed,
    Object? siteHardLink = freezed,
    Object? siteSoftLink = freezed,
    Object? siteHardTimeout = freezed,
    Object? siteSoftTimeout = freezed,
    Object? siteHardRedirect = freezed,
    Object? siteSoftRedirect = freezed,
    Object? partnersLink = freezed,
    Object? bannerPartnerLink = freezed,
    Object? tdDiscount = freezed,
    Object? tdPromocode = freezed,
    Object? phoneSupport = freezed,
    Object? footerTitleWork = freezed,
    Object? footerTitleSupport = freezed,
    Object? workTime = freezed,
    Object? restDays = freezed,
    Object? workTimeSupport = freezed,
    Object? footerTitleEmail = freezed,
    Object? footerTitleSocial = freezed,
    Object? textUnderFooter = freezed,
    Object? social = freezed,
    Object? creditHeading = freezed,
    Object? creditNoActive = freezed,
    Object? paymentBannerDesk = freezed,
    Object? paymentBannerMob = freezed,
    Object? otherPartnersHard = freezed,
    Object? otherPartnersSoft = freezed,
    Object? rejectedByRegion = freezed,
    Object? adversite = freezed,
  }) {
    return _then(_value.copyWith(
      siteHardBannerText: freezed == siteHardBannerText
          ? _value.siteHardBannerText
          : siteHardBannerText // ignore: cast_nullable_to_non_nullable
              as String?,
      siteHardLink: freezed == siteHardLink
          ? _value.siteHardLink
          : siteHardLink // ignore: cast_nullable_to_non_nullable
              as String?,
      siteSoftLink: freezed == siteSoftLink
          ? _value.siteSoftLink
          : siteSoftLink // ignore: cast_nullable_to_non_nullable
              as String?,
      siteHardTimeout: freezed == siteHardTimeout
          ? _value.siteHardTimeout
          : siteHardTimeout // ignore: cast_nullable_to_non_nullable
              as String?,
      siteSoftTimeout: freezed == siteSoftTimeout
          ? _value.siteSoftTimeout
          : siteSoftTimeout // ignore: cast_nullable_to_non_nullable
              as String?,
      siteHardRedirect: freezed == siteHardRedirect
          ? _value.siteHardRedirect
          : siteHardRedirect // ignore: cast_nullable_to_non_nullable
              as List<SiteHardRedirect>?,
      siteSoftRedirect: freezed == siteSoftRedirect
          ? _value.siteSoftRedirect
          : siteSoftRedirect // ignore: cast_nullable_to_non_nullable
              as List<SiteSoftRedirect>?,
      partnersLink: freezed == partnersLink
          ? _value.partnersLink
          : partnersLink // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerPartnerLink: freezed == bannerPartnerLink
          ? _value.bannerPartnerLink
          : bannerPartnerLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tdDiscount: freezed == tdDiscount
          ? _value.tdDiscount
          : tdDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      tdPromocode: freezed == tdPromocode
          ? _value.tdPromocode
          : tdPromocode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneSupport: freezed == phoneSupport
          ? _value.phoneSupport
          : phoneSupport // ignore: cast_nullable_to_non_nullable
              as String?,
      footerTitleWork: freezed == footerTitleWork
          ? _value.footerTitleWork
          : footerTitleWork // ignore: cast_nullable_to_non_nullable
              as String?,
      footerTitleSupport: freezed == footerTitleSupport
          ? _value.footerTitleSupport
          : footerTitleSupport // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime: freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      restDays: freezed == restDays
          ? _value.restDays
          : restDays // ignore: cast_nullable_to_non_nullable
              as String?,
      workTimeSupport: freezed == workTimeSupport
          ? _value.workTimeSupport
          : workTimeSupport // ignore: cast_nullable_to_non_nullable
              as String?,
      footerTitleEmail: freezed == footerTitleEmail
          ? _value.footerTitleEmail
          : footerTitleEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      footerTitleSocial: freezed == footerTitleSocial
          ? _value.footerTitleSocial
          : footerTitleSocial // ignore: cast_nullable_to_non_nullable
              as String?,
      textUnderFooter: freezed == textUnderFooter
          ? _value.textUnderFooter
          : textUnderFooter // ignore: cast_nullable_to_non_nullable
              as String?,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as List<Social>?,
      creditHeading: freezed == creditHeading
          ? _value.creditHeading
          : creditHeading // ignore: cast_nullable_to_non_nullable
              as String?,
      creditNoActive: freezed == creditNoActive
          ? _value.creditNoActive
          : creditNoActive // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentBannerDesk: freezed == paymentBannerDesk
          ? _value.paymentBannerDesk
          : paymentBannerDesk // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentBannerMob: freezed == paymentBannerMob
          ? _value.paymentBannerMob
          : paymentBannerMob // ignore: cast_nullable_to_non_nullable
              as String?,
      otherPartnersHard: freezed == otherPartnersHard
          ? _value.otherPartnersHard
          : otherPartnersHard // ignore: cast_nullable_to_non_nullable
              as List<OtherPartnersHard>?,
      otherPartnersSoft: freezed == otherPartnersSoft
          ? _value.otherPartnersSoft
          : otherPartnersSoft // ignore: cast_nullable_to_non_nullable
              as List<OtherPartnersSoft>?,
      rejectedByRegion: freezed == rejectedByRegion
          ? _value.rejectedByRegion
          : rejectedByRegion // ignore: cast_nullable_to_non_nullable
              as List<RejectedByRegion>?,
      adversite: freezed == adversite
          ? _value.adversite
          : adversite // ignore: cast_nullable_to_non_nullable
              as Adversite?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdversiteCopyWith<$Res>? get adversite {
    if (_value.adversite == null) {
      return null;
    }

    return $AdversiteCopyWith<$Res>(_value.adversite!, (value) {
      return _then(_value.copyWith(adversite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AcfImplCopyWith<$Res> implements $AcfCopyWith<$Res> {
  factory _$$AcfImplCopyWith(_$AcfImpl value, $Res Function(_$AcfImpl) then) =
      __$$AcfImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'site_hard_banner_text') String? siteHardBannerText,
      @JsonKey(name: 'site_hard_link') String? siteHardLink,
      @JsonKey(name: 'site_soft_link') String? siteSoftLink,
      @JsonKey(name: 'site_hard_timeout') String? siteHardTimeout,
      @JsonKey(name: 'site_soft_timeout') String? siteSoftTimeout,
      @JsonKey(name: 'site_hard_redirect')
      List<SiteHardRedirect>? siteHardRedirect,
      @JsonKey(name: 'site_soft_redirect')
      List<SiteSoftRedirect>? siteSoftRedirect,
      @JsonKey(name: 'partners_link') String? partnersLink,
      @JsonKey(name: 'banner_partner_link') String? bannerPartnerLink,
      @JsonKey(name: 'td_discount') String? tdDiscount,
      @JsonKey(name: 'td_promocode') String? tdPromocode,
      @JsonKey(name: 'phone_support') String? phoneSupport,
      @JsonKey(name: 'footer_title_work') String? footerTitleWork,
      @JsonKey(name: 'footer_title_support') String? footerTitleSupport,
      @JsonKey(name: 'work_time') String? workTime,
      @JsonKey(name: 'rest_days') String? restDays,
      @JsonKey(name: 'work_time_support') String? workTimeSupport,
      @JsonKey(name: 'footer_title_email') String? footerTitleEmail,
      @JsonKey(name: 'footer_title_social') String? footerTitleSocial,
      @JsonKey(name: 'text_under_footer') String? textUnderFooter,
      @JsonKey(name: 'social') List<Social>? social,
      @JsonKey(name: 'credit_heading') String? creditHeading,
      @JsonKey(name: 'credit_no-active') String? creditNoActive,
      @JsonKey(name: 'payment_banner_desk') String? paymentBannerDesk,
      @JsonKey(name: 'payment_banner_mob') String? paymentBannerMob,
      @JsonKey(name: 'other_partners_hard')
      List<OtherPartnersHard>? otherPartnersHard,
      @JsonKey(name: 'other_partners_soft')
      List<OtherPartnersSoft>? otherPartnersSoft,
      @JsonKey(name: 'rejected_by_region')
      List<RejectedByRegion>? rejectedByRegion,
      @JsonKey(name: 'adversite') Adversite? adversite});

  @override
  $AdversiteCopyWith<$Res>? get adversite;
}

/// @nodoc
class __$$AcfImplCopyWithImpl<$Res> extends _$AcfCopyWithImpl<$Res, _$AcfImpl>
    implements _$$AcfImplCopyWith<$Res> {
  __$$AcfImplCopyWithImpl(_$AcfImpl _value, $Res Function(_$AcfImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteHardBannerText = freezed,
    Object? siteHardLink = freezed,
    Object? siteSoftLink = freezed,
    Object? siteHardTimeout = freezed,
    Object? siteSoftTimeout = freezed,
    Object? siteHardRedirect = freezed,
    Object? siteSoftRedirect = freezed,
    Object? partnersLink = freezed,
    Object? bannerPartnerLink = freezed,
    Object? tdDiscount = freezed,
    Object? tdPromocode = freezed,
    Object? phoneSupport = freezed,
    Object? footerTitleWork = freezed,
    Object? footerTitleSupport = freezed,
    Object? workTime = freezed,
    Object? restDays = freezed,
    Object? workTimeSupport = freezed,
    Object? footerTitleEmail = freezed,
    Object? footerTitleSocial = freezed,
    Object? textUnderFooter = freezed,
    Object? social = freezed,
    Object? creditHeading = freezed,
    Object? creditNoActive = freezed,
    Object? paymentBannerDesk = freezed,
    Object? paymentBannerMob = freezed,
    Object? otherPartnersHard = freezed,
    Object? otherPartnersSoft = freezed,
    Object? rejectedByRegion = freezed,
    Object? adversite = freezed,
  }) {
    return _then(_$AcfImpl(
      siteHardBannerText: freezed == siteHardBannerText
          ? _value.siteHardBannerText
          : siteHardBannerText // ignore: cast_nullable_to_non_nullable
              as String?,
      siteHardLink: freezed == siteHardLink
          ? _value.siteHardLink
          : siteHardLink // ignore: cast_nullable_to_non_nullable
              as String?,
      siteSoftLink: freezed == siteSoftLink
          ? _value.siteSoftLink
          : siteSoftLink // ignore: cast_nullable_to_non_nullable
              as String?,
      siteHardTimeout: freezed == siteHardTimeout
          ? _value.siteHardTimeout
          : siteHardTimeout // ignore: cast_nullable_to_non_nullable
              as String?,
      siteSoftTimeout: freezed == siteSoftTimeout
          ? _value.siteSoftTimeout
          : siteSoftTimeout // ignore: cast_nullable_to_non_nullable
              as String?,
      siteHardRedirect: freezed == siteHardRedirect
          ? _value._siteHardRedirect
          : siteHardRedirect // ignore: cast_nullable_to_non_nullable
              as List<SiteHardRedirect>?,
      siteSoftRedirect: freezed == siteSoftRedirect
          ? _value._siteSoftRedirect
          : siteSoftRedirect // ignore: cast_nullable_to_non_nullable
              as List<SiteSoftRedirect>?,
      partnersLink: freezed == partnersLink
          ? _value.partnersLink
          : partnersLink // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerPartnerLink: freezed == bannerPartnerLink
          ? _value.bannerPartnerLink
          : bannerPartnerLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tdDiscount: freezed == tdDiscount
          ? _value.tdDiscount
          : tdDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      tdPromocode: freezed == tdPromocode
          ? _value.tdPromocode
          : tdPromocode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneSupport: freezed == phoneSupport
          ? _value.phoneSupport
          : phoneSupport // ignore: cast_nullable_to_non_nullable
              as String?,
      footerTitleWork: freezed == footerTitleWork
          ? _value.footerTitleWork
          : footerTitleWork // ignore: cast_nullable_to_non_nullable
              as String?,
      footerTitleSupport: freezed == footerTitleSupport
          ? _value.footerTitleSupport
          : footerTitleSupport // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime: freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      restDays: freezed == restDays
          ? _value.restDays
          : restDays // ignore: cast_nullable_to_non_nullable
              as String?,
      workTimeSupport: freezed == workTimeSupport
          ? _value.workTimeSupport
          : workTimeSupport // ignore: cast_nullable_to_non_nullable
              as String?,
      footerTitleEmail: freezed == footerTitleEmail
          ? _value.footerTitleEmail
          : footerTitleEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      footerTitleSocial: freezed == footerTitleSocial
          ? _value.footerTitleSocial
          : footerTitleSocial // ignore: cast_nullable_to_non_nullable
              as String?,
      textUnderFooter: freezed == textUnderFooter
          ? _value.textUnderFooter
          : textUnderFooter // ignore: cast_nullable_to_non_nullable
              as String?,
      social: freezed == social
          ? _value._social
          : social // ignore: cast_nullable_to_non_nullable
              as List<Social>?,
      creditHeading: freezed == creditHeading
          ? _value.creditHeading
          : creditHeading // ignore: cast_nullable_to_non_nullable
              as String?,
      creditNoActive: freezed == creditNoActive
          ? _value.creditNoActive
          : creditNoActive // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentBannerDesk: freezed == paymentBannerDesk
          ? _value.paymentBannerDesk
          : paymentBannerDesk // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentBannerMob: freezed == paymentBannerMob
          ? _value.paymentBannerMob
          : paymentBannerMob // ignore: cast_nullable_to_non_nullable
              as String?,
      otherPartnersHard: freezed == otherPartnersHard
          ? _value._otherPartnersHard
          : otherPartnersHard // ignore: cast_nullable_to_non_nullable
              as List<OtherPartnersHard>?,
      otherPartnersSoft: freezed == otherPartnersSoft
          ? _value._otherPartnersSoft
          : otherPartnersSoft // ignore: cast_nullable_to_non_nullable
              as List<OtherPartnersSoft>?,
      rejectedByRegion: freezed == rejectedByRegion
          ? _value._rejectedByRegion
          : rejectedByRegion // ignore: cast_nullable_to_non_nullable
              as List<RejectedByRegion>?,
      adversite: freezed == adversite
          ? _value.adversite
          : adversite // ignore: cast_nullable_to_non_nullable
              as Adversite?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcfImpl implements _Acf {
  const _$AcfImpl(
      {@JsonKey(name: 'site_hard_banner_text') this.siteHardBannerText,
      @JsonKey(name: 'site_hard_link') this.siteHardLink,
      @JsonKey(name: 'site_soft_link') this.siteSoftLink,
      @JsonKey(name: 'site_hard_timeout') this.siteHardTimeout,
      @JsonKey(name: 'site_soft_timeout') this.siteSoftTimeout,
      @JsonKey(name: 'site_hard_redirect')
      final List<SiteHardRedirect>? siteHardRedirect,
      @JsonKey(name: 'site_soft_redirect')
      final List<SiteSoftRedirect>? siteSoftRedirect,
      @JsonKey(name: 'partners_link') this.partnersLink,
      @JsonKey(name: 'banner_partner_link') this.bannerPartnerLink,
      @JsonKey(name: 'td_discount') this.tdDiscount,
      @JsonKey(name: 'td_promocode') this.tdPromocode,
      @JsonKey(name: 'phone_support') this.phoneSupport,
      @JsonKey(name: 'footer_title_work') this.footerTitleWork,
      @JsonKey(name: 'footer_title_support') this.footerTitleSupport,
      @JsonKey(name: 'work_time') this.workTime,
      @JsonKey(name: 'rest_days') this.restDays,
      @JsonKey(name: 'work_time_support') this.workTimeSupport,
      @JsonKey(name: 'footer_title_email') this.footerTitleEmail,
      @JsonKey(name: 'footer_title_social') this.footerTitleSocial,
      @JsonKey(name: 'text_under_footer') this.textUnderFooter,
      @JsonKey(name: 'social') final List<Social>? social,
      @JsonKey(name: 'credit_heading') this.creditHeading,
      @JsonKey(name: 'credit_no-active') this.creditNoActive,
      @JsonKey(name: 'payment_banner_desk') this.paymentBannerDesk,
      @JsonKey(name: 'payment_banner_mob') this.paymentBannerMob,
      @JsonKey(name: 'other_partners_hard')
      final List<OtherPartnersHard>? otherPartnersHard,
      @JsonKey(name: 'other_partners_soft')
      final List<OtherPartnersSoft>? otherPartnersSoft,
      @JsonKey(name: 'rejected_by_region')
      final List<RejectedByRegion>? rejectedByRegion,
      @JsonKey(name: 'adversite') this.adversite})
      : _siteHardRedirect = siteHardRedirect,
        _siteSoftRedirect = siteSoftRedirect,
        _social = social,
        _otherPartnersHard = otherPartnersHard,
        _otherPartnersSoft = otherPartnersSoft,
        _rejectedByRegion = rejectedByRegion;

  factory _$AcfImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcfImplFromJson(json);

  @override
  @JsonKey(name: 'site_hard_banner_text')
  final String? siteHardBannerText;
  @override
  @JsonKey(name: 'site_hard_link')
  final String? siteHardLink;
  @override
  @JsonKey(name: 'site_soft_link')
  final String? siteSoftLink;
  @override
  @JsonKey(name: 'site_hard_timeout')
  final String? siteHardTimeout;
  @override
  @JsonKey(name: 'site_soft_timeout')
  final String? siteSoftTimeout;
  final List<SiteHardRedirect>? _siteHardRedirect;
  @override
  @JsonKey(name: 'site_hard_redirect')
  List<SiteHardRedirect>? get siteHardRedirect {
    final value = _siteHardRedirect;
    if (value == null) return null;
    if (_siteHardRedirect is EqualUnmodifiableListView)
      return _siteHardRedirect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SiteSoftRedirect>? _siteSoftRedirect;
  @override
  @JsonKey(name: 'site_soft_redirect')
  List<SiteSoftRedirect>? get siteSoftRedirect {
    final value = _siteSoftRedirect;
    if (value == null) return null;
    if (_siteSoftRedirect is EqualUnmodifiableListView)
      return _siteSoftRedirect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'partners_link')
  final String? partnersLink;
  @override
  @JsonKey(name: 'banner_partner_link')
  final String? bannerPartnerLink;
  @override
  @JsonKey(name: 'td_discount')
  final String? tdDiscount;
  @override
  @JsonKey(name: 'td_promocode')
  final String? tdPromocode;
  @override
  @JsonKey(name: 'phone_support')
  final String? phoneSupport;
  @override
  @JsonKey(name: 'footer_title_work')
  final String? footerTitleWork;
  @override
  @JsonKey(name: 'footer_title_support')
  final String? footerTitleSupport;
  @override
  @JsonKey(name: 'work_time')
  final String? workTime;
  @override
  @JsonKey(name: 'rest_days')
  final String? restDays;
  @override
  @JsonKey(name: 'work_time_support')
  final String? workTimeSupport;
  @override
  @JsonKey(name: 'footer_title_email')
  final String? footerTitleEmail;
  @override
  @JsonKey(name: 'footer_title_social')
  final String? footerTitleSocial;
  @override
  @JsonKey(name: 'text_under_footer')
  final String? textUnderFooter;
  final List<Social>? _social;
  @override
  @JsonKey(name: 'social')
  List<Social>? get social {
    final value = _social;
    if (value == null) return null;
    if (_social is EqualUnmodifiableListView) return _social;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'credit_heading')
  final String? creditHeading;
  @override
  @JsonKey(name: 'credit_no-active')
  final String? creditNoActive;
  @override
  @JsonKey(name: 'payment_banner_desk')
  final String? paymentBannerDesk;
  @override
  @JsonKey(name: 'payment_banner_mob')
  final String? paymentBannerMob;
  final List<OtherPartnersHard>? _otherPartnersHard;
  @override
  @JsonKey(name: 'other_partners_hard')
  List<OtherPartnersHard>? get otherPartnersHard {
    final value = _otherPartnersHard;
    if (value == null) return null;
    if (_otherPartnersHard is EqualUnmodifiableListView)
      return _otherPartnersHard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OtherPartnersSoft>? _otherPartnersSoft;
  @override
  @JsonKey(name: 'other_partners_soft')
  List<OtherPartnersSoft>? get otherPartnersSoft {
    final value = _otherPartnersSoft;
    if (value == null) return null;
    if (_otherPartnersSoft is EqualUnmodifiableListView)
      return _otherPartnersSoft;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RejectedByRegion>? _rejectedByRegion;
  @override
  @JsonKey(name: 'rejected_by_region')
  List<RejectedByRegion>? get rejectedByRegion {
    final value = _rejectedByRegion;
    if (value == null) return null;
    if (_rejectedByRegion is EqualUnmodifiableListView)
      return _rejectedByRegion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'adversite')
  final Adversite? adversite;

  @override
  String toString() {
    return 'Acf(siteHardBannerText: $siteHardBannerText, siteHardLink: $siteHardLink, siteSoftLink: $siteSoftLink, siteHardTimeout: $siteHardTimeout, siteSoftTimeout: $siteSoftTimeout, siteHardRedirect: $siteHardRedirect, siteSoftRedirect: $siteSoftRedirect, partnersLink: $partnersLink, bannerPartnerLink: $bannerPartnerLink, tdDiscount: $tdDiscount, tdPromocode: $tdPromocode, phoneSupport: $phoneSupport, footerTitleWork: $footerTitleWork, footerTitleSupport: $footerTitleSupport, workTime: $workTime, restDays: $restDays, workTimeSupport: $workTimeSupport, footerTitleEmail: $footerTitleEmail, footerTitleSocial: $footerTitleSocial, textUnderFooter: $textUnderFooter, social: $social, creditHeading: $creditHeading, creditNoActive: $creditNoActive, paymentBannerDesk: $paymentBannerDesk, paymentBannerMob: $paymentBannerMob, otherPartnersHard: $otherPartnersHard, otherPartnersSoft: $otherPartnersSoft, rejectedByRegion: $rejectedByRegion, adversite: $adversite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcfImpl &&
            (identical(other.siteHardBannerText, siteHardBannerText) ||
                other.siteHardBannerText == siteHardBannerText) &&
            (identical(other.siteHardLink, siteHardLink) ||
                other.siteHardLink == siteHardLink) &&
            (identical(other.siteSoftLink, siteSoftLink) ||
                other.siteSoftLink == siteSoftLink) &&
            (identical(other.siteHardTimeout, siteHardTimeout) ||
                other.siteHardTimeout == siteHardTimeout) &&
            (identical(other.siteSoftTimeout, siteSoftTimeout) ||
                other.siteSoftTimeout == siteSoftTimeout) &&
            const DeepCollectionEquality()
                .equals(other._siteHardRedirect, _siteHardRedirect) &&
            const DeepCollectionEquality()
                .equals(other._siteSoftRedirect, _siteSoftRedirect) &&
            (identical(other.partnersLink, partnersLink) ||
                other.partnersLink == partnersLink) &&
            (identical(other.bannerPartnerLink, bannerPartnerLink) ||
                other.bannerPartnerLink == bannerPartnerLink) &&
            (identical(other.tdDiscount, tdDiscount) ||
                other.tdDiscount == tdDiscount) &&
            (identical(other.tdPromocode, tdPromocode) ||
                other.tdPromocode == tdPromocode) &&
            (identical(other.phoneSupport, phoneSupport) ||
                other.phoneSupport == phoneSupport) &&
            (identical(other.footerTitleWork, footerTitleWork) ||
                other.footerTitleWork == footerTitleWork) &&
            (identical(other.footerTitleSupport, footerTitleSupport) ||
                other.footerTitleSupport == footerTitleSupport) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime) &&
            (identical(other.restDays, restDays) ||
                other.restDays == restDays) &&
            (identical(other.workTimeSupport, workTimeSupport) ||
                other.workTimeSupport == workTimeSupport) &&
            (identical(other.footerTitleEmail, footerTitleEmail) ||
                other.footerTitleEmail == footerTitleEmail) &&
            (identical(other.footerTitleSocial, footerTitleSocial) ||
                other.footerTitleSocial == footerTitleSocial) &&
            (identical(other.textUnderFooter, textUnderFooter) ||
                other.textUnderFooter == textUnderFooter) &&
            const DeepCollectionEquality().equals(other._social, _social) &&
            (identical(other.creditHeading, creditHeading) ||
                other.creditHeading == creditHeading) &&
            (identical(other.creditNoActive, creditNoActive) ||
                other.creditNoActive == creditNoActive) &&
            (identical(other.paymentBannerDesk, paymentBannerDesk) ||
                other.paymentBannerDesk == paymentBannerDesk) &&
            (identical(other.paymentBannerMob, paymentBannerMob) ||
                other.paymentBannerMob == paymentBannerMob) &&
            const DeepCollectionEquality()
                .equals(other._otherPartnersHard, _otherPartnersHard) &&
            const DeepCollectionEquality()
                .equals(other._otherPartnersSoft, _otherPartnersSoft) &&
            const DeepCollectionEquality()
                .equals(other._rejectedByRegion, _rejectedByRegion) &&
            (identical(other.adversite, adversite) ||
                other.adversite == adversite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        siteHardBannerText,
        siteHardLink,
        siteSoftLink,
        siteHardTimeout,
        siteSoftTimeout,
        const DeepCollectionEquality().hash(_siteHardRedirect),
        const DeepCollectionEquality().hash(_siteSoftRedirect),
        partnersLink,
        bannerPartnerLink,
        tdDiscount,
        tdPromocode,
        phoneSupport,
        footerTitleWork,
        footerTitleSupport,
        workTime,
        restDays,
        workTimeSupport,
        footerTitleEmail,
        footerTitleSocial,
        textUnderFooter,
        const DeepCollectionEquality().hash(_social),
        creditHeading,
        creditNoActive,
        paymentBannerDesk,
        paymentBannerMob,
        const DeepCollectionEquality().hash(_otherPartnersHard),
        const DeepCollectionEquality().hash(_otherPartnersSoft),
        const DeepCollectionEquality().hash(_rejectedByRegion),
        adversite
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcfImplCopyWith<_$AcfImpl> get copyWith =>
      __$$AcfImplCopyWithImpl<_$AcfImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcfImplToJson(
      this,
    );
  }
}

abstract class _Acf implements Acf {
  const factory _Acf(
      {@JsonKey(name: 'site_hard_banner_text') final String? siteHardBannerText,
      @JsonKey(name: 'site_hard_link') final String? siteHardLink,
      @JsonKey(name: 'site_soft_link') final String? siteSoftLink,
      @JsonKey(name: 'site_hard_timeout') final String? siteHardTimeout,
      @JsonKey(name: 'site_soft_timeout') final String? siteSoftTimeout,
      @JsonKey(name: 'site_hard_redirect')
      final List<SiteHardRedirect>? siteHardRedirect,
      @JsonKey(name: 'site_soft_redirect')
      final List<SiteSoftRedirect>? siteSoftRedirect,
      @JsonKey(name: 'partners_link') final String? partnersLink,
      @JsonKey(name: 'banner_partner_link') final String? bannerPartnerLink,
      @JsonKey(name: 'td_discount') final String? tdDiscount,
      @JsonKey(name: 'td_promocode') final String? tdPromocode,
      @JsonKey(name: 'phone_support') final String? phoneSupport,
      @JsonKey(name: 'footer_title_work') final String? footerTitleWork,
      @JsonKey(name: 'footer_title_support') final String? footerTitleSupport,
      @JsonKey(name: 'work_time') final String? workTime,
      @JsonKey(name: 'rest_days') final String? restDays,
      @JsonKey(name: 'work_time_support') final String? workTimeSupport,
      @JsonKey(name: 'footer_title_email') final String? footerTitleEmail,
      @JsonKey(name: 'footer_title_social') final String? footerTitleSocial,
      @JsonKey(name: 'text_under_footer') final String? textUnderFooter,
      @JsonKey(name: 'social') final List<Social>? social,
      @JsonKey(name: 'credit_heading') final String? creditHeading,
      @JsonKey(name: 'credit_no-active') final String? creditNoActive,
      @JsonKey(name: 'payment_banner_desk') final String? paymentBannerDesk,
      @JsonKey(name: 'payment_banner_mob') final String? paymentBannerMob,
      @JsonKey(name: 'other_partners_hard')
      final List<OtherPartnersHard>? otherPartnersHard,
      @JsonKey(name: 'other_partners_soft')
      final List<OtherPartnersSoft>? otherPartnersSoft,
      @JsonKey(name: 'rejected_by_region')
      final List<RejectedByRegion>? rejectedByRegion,
      @JsonKey(name: 'adversite') final Adversite? adversite}) = _$AcfImpl;

  factory _Acf.fromJson(Map<String, dynamic> json) = _$AcfImpl.fromJson;

  @override
  @JsonKey(name: 'site_hard_banner_text')
  String? get siteHardBannerText;
  @override
  @JsonKey(name: 'site_hard_link')
  String? get siteHardLink;
  @override
  @JsonKey(name: 'site_soft_link')
  String? get siteSoftLink;
  @override
  @JsonKey(name: 'site_hard_timeout')
  String? get siteHardTimeout;
  @override
  @JsonKey(name: 'site_soft_timeout')
  String? get siteSoftTimeout;
  @override
  @JsonKey(name: 'site_hard_redirect')
  List<SiteHardRedirect>? get siteHardRedirect;
  @override
  @JsonKey(name: 'site_soft_redirect')
  List<SiteSoftRedirect>? get siteSoftRedirect;
  @override
  @JsonKey(name: 'partners_link')
  String? get partnersLink;
  @override
  @JsonKey(name: 'banner_partner_link')
  String? get bannerPartnerLink;
  @override
  @JsonKey(name: 'td_discount')
  String? get tdDiscount;
  @override
  @JsonKey(name: 'td_promocode')
  String? get tdPromocode;
  @override
  @JsonKey(name: 'phone_support')
  String? get phoneSupport;
  @override
  @JsonKey(name: 'footer_title_work')
  String? get footerTitleWork;
  @override
  @JsonKey(name: 'footer_title_support')
  String? get footerTitleSupport;
  @override
  @JsonKey(name: 'work_time')
  String? get workTime;
  @override
  @JsonKey(name: 'rest_days')
  String? get restDays;
  @override
  @JsonKey(name: 'work_time_support')
  String? get workTimeSupport;
  @override
  @JsonKey(name: 'footer_title_email')
  String? get footerTitleEmail;
  @override
  @JsonKey(name: 'footer_title_social')
  String? get footerTitleSocial;
  @override
  @JsonKey(name: 'text_under_footer')
  String? get textUnderFooter;
  @override
  @JsonKey(name: 'social')
  List<Social>? get social;
  @override
  @JsonKey(name: 'credit_heading')
  String? get creditHeading;
  @override
  @JsonKey(name: 'credit_no-active')
  String? get creditNoActive;
  @override
  @JsonKey(name: 'payment_banner_desk')
  String? get paymentBannerDesk;
  @override
  @JsonKey(name: 'payment_banner_mob')
  String? get paymentBannerMob;
  @override
  @JsonKey(name: 'other_partners_hard')
  List<OtherPartnersHard>? get otherPartnersHard;
  @override
  @JsonKey(name: 'other_partners_soft')
  List<OtherPartnersSoft>? get otherPartnersSoft;
  @override
  @JsonKey(name: 'rejected_by_region')
  List<RejectedByRegion>? get rejectedByRegion;
  @override
  @JsonKey(name: 'adversite')
  Adversite? get adversite;
  @override
  @JsonKey(ignore: true)
  _$$AcfImplCopyWith<_$AcfImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SiteHardRedirect _$SiteHardRedirectFromJson(Map<String, dynamic> json) {
  return _SiteHardRedirect.fromJson(json);
}

/// @nodoc
mixin _$SiteHardRedirect {
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'percent')
  String? get percent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteHardRedirectCopyWith<SiteHardRedirect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteHardRedirectCopyWith<$Res> {
  factory $SiteHardRedirectCopyWith(
          SiteHardRedirect value, $Res Function(SiteHardRedirect) then) =
      _$SiteHardRedirectCopyWithImpl<$Res, SiteHardRedirect>;
  @useResult
  $Res call(
      {@JsonKey(name: 'link') String? link,
      @JsonKey(name: 'percent') String? percent});
}

/// @nodoc
class _$SiteHardRedirectCopyWithImpl<$Res, $Val extends SiteHardRedirect>
    implements $SiteHardRedirectCopyWith<$Res> {
  _$SiteHardRedirectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? percent = freezed,
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SiteHardRedirectImplCopyWith<$Res>
    implements $SiteHardRedirectCopyWith<$Res> {
  factory _$$SiteHardRedirectImplCopyWith(_$SiteHardRedirectImpl value,
          $Res Function(_$SiteHardRedirectImpl) then) =
      __$$SiteHardRedirectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'link') String? link,
      @JsonKey(name: 'percent') String? percent});
}

/// @nodoc
class __$$SiteHardRedirectImplCopyWithImpl<$Res>
    extends _$SiteHardRedirectCopyWithImpl<$Res, _$SiteHardRedirectImpl>
    implements _$$SiteHardRedirectImplCopyWith<$Res> {
  __$$SiteHardRedirectImplCopyWithImpl(_$SiteHardRedirectImpl _value,
      $Res Function(_$SiteHardRedirectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? percent = freezed,
  }) {
    return _then(_$SiteHardRedirectImpl(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteHardRedirectImpl implements _SiteHardRedirect {
  const _$SiteHardRedirectImpl(
      {@JsonKey(name: 'link') this.link,
      @JsonKey(name: 'percent') this.percent});

  factory _$SiteHardRedirectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteHardRedirectImplFromJson(json);

  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'percent')
  final String? percent;

  @override
  String toString() {
    return 'SiteHardRedirect(link: $link, percent: $percent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteHardRedirectImpl &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, link, percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteHardRedirectImplCopyWith<_$SiteHardRedirectImpl> get copyWith =>
      __$$SiteHardRedirectImplCopyWithImpl<_$SiteHardRedirectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteHardRedirectImplToJson(
      this,
    );
  }
}

abstract class _SiteHardRedirect implements SiteHardRedirect {
  const factory _SiteHardRedirect(
          {@JsonKey(name: 'link') final String? link,
          @JsonKey(name: 'percent') final String? percent}) =
      _$SiteHardRedirectImpl;

  factory _SiteHardRedirect.fromJson(Map<String, dynamic> json) =
      _$SiteHardRedirectImpl.fromJson;

  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'percent')
  String? get percent;
  @override
  @JsonKey(ignore: true)
  _$$SiteHardRedirectImplCopyWith<_$SiteHardRedirectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SiteSoftRedirect _$SiteSoftRedirectFromJson(Map<String, dynamic> json) {
  return _SiteSoftRedirect.fromJson(json);
}

/// @nodoc
mixin _$SiteSoftRedirect {
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'percent')
  String? get percent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteSoftRedirectCopyWith<SiteSoftRedirect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteSoftRedirectCopyWith<$Res> {
  factory $SiteSoftRedirectCopyWith(
          SiteSoftRedirect value, $Res Function(SiteSoftRedirect) then) =
      _$SiteSoftRedirectCopyWithImpl<$Res, SiteSoftRedirect>;
  @useResult
  $Res call(
      {@JsonKey(name: 'link') String? link,
      @JsonKey(name: 'percent') String? percent});
}

/// @nodoc
class _$SiteSoftRedirectCopyWithImpl<$Res, $Val extends SiteSoftRedirect>
    implements $SiteSoftRedirectCopyWith<$Res> {
  _$SiteSoftRedirectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? percent = freezed,
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SiteSoftRedirectImplCopyWith<$Res>
    implements $SiteSoftRedirectCopyWith<$Res> {
  factory _$$SiteSoftRedirectImplCopyWith(_$SiteSoftRedirectImpl value,
          $Res Function(_$SiteSoftRedirectImpl) then) =
      __$$SiteSoftRedirectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'link') String? link,
      @JsonKey(name: 'percent') String? percent});
}

/// @nodoc
class __$$SiteSoftRedirectImplCopyWithImpl<$Res>
    extends _$SiteSoftRedirectCopyWithImpl<$Res, _$SiteSoftRedirectImpl>
    implements _$$SiteSoftRedirectImplCopyWith<$Res> {
  __$$SiteSoftRedirectImplCopyWithImpl(_$SiteSoftRedirectImpl _value,
      $Res Function(_$SiteSoftRedirectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? percent = freezed,
  }) {
    return _then(_$SiteSoftRedirectImpl(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteSoftRedirectImpl implements _SiteSoftRedirect {
  const _$SiteSoftRedirectImpl(
      {@JsonKey(name: 'link') this.link,
      @JsonKey(name: 'percent') this.percent});

  factory _$SiteSoftRedirectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteSoftRedirectImplFromJson(json);

  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'percent')
  final String? percent;

  @override
  String toString() {
    return 'SiteSoftRedirect(link: $link, percent: $percent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteSoftRedirectImpl &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, link, percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteSoftRedirectImplCopyWith<_$SiteSoftRedirectImpl> get copyWith =>
      __$$SiteSoftRedirectImplCopyWithImpl<_$SiteSoftRedirectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteSoftRedirectImplToJson(
      this,
    );
  }
}

abstract class _SiteSoftRedirect implements SiteSoftRedirect {
  const factory _SiteSoftRedirect(
          {@JsonKey(name: 'link') final String? link,
          @JsonKey(name: 'percent') final String? percent}) =
      _$SiteSoftRedirectImpl;

  factory _SiteSoftRedirect.fromJson(Map<String, dynamic> json) =
      _$SiteSoftRedirectImpl.fromJson;

  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'percent')
  String? get percent;
  @override
  @JsonKey(ignore: true)
  _$$SiteSoftRedirectImplCopyWith<_$SiteSoftRedirectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Social _$SocialFromJson(Map<String, dynamic> json) {
  return _Social.fromJson(json);
}

/// @nodoc
mixin _$Social {
  @JsonKey(name: 'social_title')
  String? get socialTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_address')
  String? get socialAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_icon')
  String? get socialIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialCopyWith<Social> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialCopyWith<$Res> {
  factory $SocialCopyWith(Social value, $Res Function(Social) then) =
      _$SocialCopyWithImpl<$Res, Social>;
  @useResult
  $Res call(
      {@JsonKey(name: 'social_title') String? socialTitle,
      @JsonKey(name: 'social_address') String? socialAddress,
      @JsonKey(name: 'social_icon') String? socialIcon});
}

/// @nodoc
class _$SocialCopyWithImpl<$Res, $Val extends Social>
    implements $SocialCopyWith<$Res> {
  _$SocialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialTitle = freezed,
    Object? socialAddress = freezed,
    Object? socialIcon = freezed,
  }) {
    return _then(_value.copyWith(
      socialTitle: freezed == socialTitle
          ? _value.socialTitle
          : socialTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      socialAddress: freezed == socialAddress
          ? _value.socialAddress
          : socialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      socialIcon: freezed == socialIcon
          ? _value.socialIcon
          : socialIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialImplCopyWith<$Res> implements $SocialCopyWith<$Res> {
  factory _$$SocialImplCopyWith(
          _$SocialImpl value, $Res Function(_$SocialImpl) then) =
      __$$SocialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'social_title') String? socialTitle,
      @JsonKey(name: 'social_address') String? socialAddress,
      @JsonKey(name: 'social_icon') String? socialIcon});
}

/// @nodoc
class __$$SocialImplCopyWithImpl<$Res>
    extends _$SocialCopyWithImpl<$Res, _$SocialImpl>
    implements _$$SocialImplCopyWith<$Res> {
  __$$SocialImplCopyWithImpl(
      _$SocialImpl _value, $Res Function(_$SocialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialTitle = freezed,
    Object? socialAddress = freezed,
    Object? socialIcon = freezed,
  }) {
    return _then(_$SocialImpl(
      socialTitle: freezed == socialTitle
          ? _value.socialTitle
          : socialTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      socialAddress: freezed == socialAddress
          ? _value.socialAddress
          : socialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      socialIcon: freezed == socialIcon
          ? _value.socialIcon
          : socialIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialImpl implements _Social {
  const _$SocialImpl(
      {@JsonKey(name: 'social_title') this.socialTitle,
      @JsonKey(name: 'social_address') this.socialAddress,
      @JsonKey(name: 'social_icon') this.socialIcon});

  factory _$SocialImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialImplFromJson(json);

  @override
  @JsonKey(name: 'social_title')
  final String? socialTitle;
  @override
  @JsonKey(name: 'social_address')
  final String? socialAddress;
  @override
  @JsonKey(name: 'social_icon')
  final String? socialIcon;

  @override
  String toString() {
    return 'Social(socialTitle: $socialTitle, socialAddress: $socialAddress, socialIcon: $socialIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialImpl &&
            (identical(other.socialTitle, socialTitle) ||
                other.socialTitle == socialTitle) &&
            (identical(other.socialAddress, socialAddress) ||
                other.socialAddress == socialAddress) &&
            (identical(other.socialIcon, socialIcon) ||
                other.socialIcon == socialIcon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, socialTitle, socialAddress, socialIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialImplCopyWith<_$SocialImpl> get copyWith =>
      __$$SocialImplCopyWithImpl<_$SocialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialImplToJson(
      this,
    );
  }
}

abstract class _Social implements Social {
  const factory _Social(
      {@JsonKey(name: 'social_title') final String? socialTitle,
      @JsonKey(name: 'social_address') final String? socialAddress,
      @JsonKey(name: 'social_icon') final String? socialIcon}) = _$SocialImpl;

  factory _Social.fromJson(Map<String, dynamic> json) = _$SocialImpl.fromJson;

  @override
  @JsonKey(name: 'social_title')
  String? get socialTitle;
  @override
  @JsonKey(name: 'social_address')
  String? get socialAddress;
  @override
  @JsonKey(name: 'social_icon')
  String? get socialIcon;
  @override
  @JsonKey(ignore: true)
  _$$SocialImplCopyWith<_$SocialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherPartnersHard _$OtherPartnersHardFromJson(Map<String, dynamic> json) {
  return _OtherPartnersHard.fromJson(json);
}

/// @nodoc
mixin _$OtherPartnersHard {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  String? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'sum')
  String? get sum => throw _privateConstructorUsedError;
  @JsonKey(name: 'term')
  String? get term => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  String? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherPartnersHardCopyWith<OtherPartnersHard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherPartnersHardCopyWith<$Res> {
  factory $OtherPartnersHardCopyWith(
          OtherPartnersHard value, $Res Function(OtherPartnersHard) then) =
      _$OtherPartnersHardCopyWithImpl<$Res, OtherPartnersHard>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'rate') String? rate,
      @JsonKey(name: 'sum') String? sum,
      @JsonKey(name: 'term') String? term,
      @JsonKey(name: 'rating') String? rating});
}

/// @nodoc
class _$OtherPartnersHardCopyWithImpl<$Res, $Val extends OtherPartnersHard>
    implements $OtherPartnersHardCopyWith<$Res> {
  _$OtherPartnersHardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? icon = freezed,
    Object? rate = freezed,
    Object? sum = freezed,
    Object? term = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherPartnersHardImplCopyWith<$Res>
    implements $OtherPartnersHardCopyWith<$Res> {
  factory _$$OtherPartnersHardImplCopyWith(_$OtherPartnersHardImpl value,
          $Res Function(_$OtherPartnersHardImpl) then) =
      __$$OtherPartnersHardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'rate') String? rate,
      @JsonKey(name: 'sum') String? sum,
      @JsonKey(name: 'term') String? term,
      @JsonKey(name: 'rating') String? rating});
}

/// @nodoc
class __$$OtherPartnersHardImplCopyWithImpl<$Res>
    extends _$OtherPartnersHardCopyWithImpl<$Res, _$OtherPartnersHardImpl>
    implements _$$OtherPartnersHardImplCopyWith<$Res> {
  __$$OtherPartnersHardImplCopyWithImpl(_$OtherPartnersHardImpl _value,
      $Res Function(_$OtherPartnersHardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? icon = freezed,
    Object? rate = freezed,
    Object? sum = freezed,
    Object? term = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$OtherPartnersHardImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherPartnersHardImpl implements _OtherPartnersHard {
  const _$OtherPartnersHardImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'icon') this.icon,
      @JsonKey(name: 'rate') this.rate,
      @JsonKey(name: 'sum') this.sum,
      @JsonKey(name: 'term') this.term,
      @JsonKey(name: 'rating') this.rating});

  factory _$OtherPartnersHardImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherPartnersHardImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'icon')
  final String? icon;
  @override
  @JsonKey(name: 'rate')
  final String? rate;
  @override
  @JsonKey(name: 'sum')
  final String? sum;
  @override
  @JsonKey(name: 'term')
  final String? term;
  @override
  @JsonKey(name: 'rating')
  final String? rating;

  @override
  String toString() {
    return 'OtherPartnersHard(title: $title, link: $link, icon: $icon, rate: $rate, sum: $sum, term: $term, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherPartnersHardImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, link, icon, rate, sum, term, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherPartnersHardImplCopyWith<_$OtherPartnersHardImpl> get copyWith =>
      __$$OtherPartnersHardImplCopyWithImpl<_$OtherPartnersHardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherPartnersHardImplToJson(
      this,
    );
  }
}

abstract class _OtherPartnersHard implements OtherPartnersHard {
  const factory _OtherPartnersHard(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'link') final String? link,
      @JsonKey(name: 'icon') final String? icon,
      @JsonKey(name: 'rate') final String? rate,
      @JsonKey(name: 'sum') final String? sum,
      @JsonKey(name: 'term') final String? term,
      @JsonKey(name: 'rating') final String? rating}) = _$OtherPartnersHardImpl;

  factory _OtherPartnersHard.fromJson(Map<String, dynamic> json) =
      _$OtherPartnersHardImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'icon')
  String? get icon;
  @override
  @JsonKey(name: 'rate')
  String? get rate;
  @override
  @JsonKey(name: 'sum')
  String? get sum;
  @override
  @JsonKey(name: 'term')
  String? get term;
  @override
  @JsonKey(name: 'rating')
  String? get rating;
  @override
  @JsonKey(ignore: true)
  _$$OtherPartnersHardImplCopyWith<_$OtherPartnersHardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherPartnersSoft _$OtherPartnersSoftFromJson(Map<String, dynamic> json) {
  return _OtherPartnersSoft.fromJson(json);
}

/// @nodoc
mixin _$OtherPartnersSoft {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  String? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'sum')
  String? get sum => throw _privateConstructorUsedError;
  @JsonKey(name: 'term')
  String? get term => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  String? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherPartnersSoftCopyWith<OtherPartnersSoft> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherPartnersSoftCopyWith<$Res> {
  factory $OtherPartnersSoftCopyWith(
          OtherPartnersSoft value, $Res Function(OtherPartnersSoft) then) =
      _$OtherPartnersSoftCopyWithImpl<$Res, OtherPartnersSoft>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'rate') String? rate,
      @JsonKey(name: 'sum') String? sum,
      @JsonKey(name: 'term') String? term,
      @JsonKey(name: 'rating') String? rating});
}

/// @nodoc
class _$OtherPartnersSoftCopyWithImpl<$Res, $Val extends OtherPartnersSoft>
    implements $OtherPartnersSoftCopyWith<$Res> {
  _$OtherPartnersSoftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? icon = freezed,
    Object? rate = freezed,
    Object? sum = freezed,
    Object? term = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherPartnersSoftImplCopyWith<$Res>
    implements $OtherPartnersSoftCopyWith<$Res> {
  factory _$$OtherPartnersSoftImplCopyWith(_$OtherPartnersSoftImpl value,
          $Res Function(_$OtherPartnersSoftImpl) then) =
      __$$OtherPartnersSoftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'rate') String? rate,
      @JsonKey(name: 'sum') String? sum,
      @JsonKey(name: 'term') String? term,
      @JsonKey(name: 'rating') String? rating});
}

/// @nodoc
class __$$OtherPartnersSoftImplCopyWithImpl<$Res>
    extends _$OtherPartnersSoftCopyWithImpl<$Res, _$OtherPartnersSoftImpl>
    implements _$$OtherPartnersSoftImplCopyWith<$Res> {
  __$$OtherPartnersSoftImplCopyWithImpl(_$OtherPartnersSoftImpl _value,
      $Res Function(_$OtherPartnersSoftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? icon = freezed,
    Object? rate = freezed,
    Object? sum = freezed,
    Object? term = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$OtherPartnersSoftImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherPartnersSoftImpl implements _OtherPartnersSoft {
  const _$OtherPartnersSoftImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'icon') this.icon,
      @JsonKey(name: 'rate') this.rate,
      @JsonKey(name: 'sum') this.sum,
      @JsonKey(name: 'term') this.term,
      @JsonKey(name: 'rating') this.rating});

  factory _$OtherPartnersSoftImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherPartnersSoftImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'icon')
  final String? icon;
  @override
  @JsonKey(name: 'rate')
  final String? rate;
  @override
  @JsonKey(name: 'sum')
  final String? sum;
  @override
  @JsonKey(name: 'term')
  final String? term;
  @override
  @JsonKey(name: 'rating')
  final String? rating;

  @override
  String toString() {
    return 'OtherPartnersSoft(title: $title, link: $link, icon: $icon, rate: $rate, sum: $sum, term: $term, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherPartnersSoftImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, link, icon, rate, sum, term, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherPartnersSoftImplCopyWith<_$OtherPartnersSoftImpl> get copyWith =>
      __$$OtherPartnersSoftImplCopyWithImpl<_$OtherPartnersSoftImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherPartnersSoftImplToJson(
      this,
    );
  }
}

abstract class _OtherPartnersSoft implements OtherPartnersSoft {
  const factory _OtherPartnersSoft(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'link') final String? link,
      @JsonKey(name: 'icon') final String? icon,
      @JsonKey(name: 'rate') final String? rate,
      @JsonKey(name: 'sum') final String? sum,
      @JsonKey(name: 'term') final String? term,
      @JsonKey(name: 'rating') final String? rating}) = _$OtherPartnersSoftImpl;

  factory _OtherPartnersSoft.fromJson(Map<String, dynamic> json) =
      _$OtherPartnersSoftImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'icon')
  String? get icon;
  @override
  @JsonKey(name: 'rate')
  String? get rate;
  @override
  @JsonKey(name: 'sum')
  String? get sum;
  @override
  @JsonKey(name: 'term')
  String? get term;
  @override
  @JsonKey(name: 'rating')
  String? get rating;
  @override
  @JsonKey(ignore: true)
  _$$OtherPartnersSoftImplCopyWith<_$OtherPartnersSoftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RejectedByRegion _$RejectedByRegionFromJson(Map<String, dynamic> json) {
  return _RejectedByRegion.fromJson(json);
}

/// @nodoc
mixin _$RejectedByRegion {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  String? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'sum')
  String? get sum => throw _privateConstructorUsedError;
  @JsonKey(name: 'term')
  String? get term => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  String? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RejectedByRegionCopyWith<RejectedByRegion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RejectedByRegionCopyWith<$Res> {
  factory $RejectedByRegionCopyWith(
          RejectedByRegion value, $Res Function(RejectedByRegion) then) =
      _$RejectedByRegionCopyWithImpl<$Res, RejectedByRegion>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'rate') String? rate,
      @JsonKey(name: 'sum') String? sum,
      @JsonKey(name: 'term') String? term,
      @JsonKey(name: 'rating') String? rating});
}

/// @nodoc
class _$RejectedByRegionCopyWithImpl<$Res, $Val extends RejectedByRegion>
    implements $RejectedByRegionCopyWith<$Res> {
  _$RejectedByRegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? text = freezed,
    Object? icon = freezed,
    Object? rate = freezed,
    Object? sum = freezed,
    Object? term = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RejectedByRegionImplCopyWith<$Res>
    implements $RejectedByRegionCopyWith<$Res> {
  factory _$$RejectedByRegionImplCopyWith(_$RejectedByRegionImpl value,
          $Res Function(_$RejectedByRegionImpl) then) =
      __$$RejectedByRegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'rate') String? rate,
      @JsonKey(name: 'sum') String? sum,
      @JsonKey(name: 'term') String? term,
      @JsonKey(name: 'rating') String? rating});
}

/// @nodoc
class __$$RejectedByRegionImplCopyWithImpl<$Res>
    extends _$RejectedByRegionCopyWithImpl<$Res, _$RejectedByRegionImpl>
    implements _$$RejectedByRegionImplCopyWith<$Res> {
  __$$RejectedByRegionImplCopyWithImpl(_$RejectedByRegionImpl _value,
      $Res Function(_$RejectedByRegionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? text = freezed,
    Object? icon = freezed,
    Object? rate = freezed,
    Object? sum = freezed,
    Object? term = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$RejectedByRegionImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RejectedByRegionImpl implements _RejectedByRegion {
  const _$RejectedByRegionImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'icon') this.icon,
      @JsonKey(name: 'rate') this.rate,
      @JsonKey(name: 'sum') this.sum,
      @JsonKey(name: 'term') this.term,
      @JsonKey(name: 'rating') this.rating});

  factory _$RejectedByRegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RejectedByRegionImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'icon')
  final String? icon;
  @override
  @JsonKey(name: 'rate')
  final String? rate;
  @override
  @JsonKey(name: 'sum')
  final String? sum;
  @override
  @JsonKey(name: 'term')
  final String? term;
  @override
  @JsonKey(name: 'rating')
  final String? rating;

  @override
  String toString() {
    return 'RejectedByRegion(title: $title, link: $link, text: $text, icon: $icon, rate: $rate, sum: $sum, term: $term, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectedByRegionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, link, text, icon, rate, sum, term, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectedByRegionImplCopyWith<_$RejectedByRegionImpl> get copyWith =>
      __$$RejectedByRegionImplCopyWithImpl<_$RejectedByRegionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RejectedByRegionImplToJson(
      this,
    );
  }
}

abstract class _RejectedByRegion implements RejectedByRegion {
  const factory _RejectedByRegion(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'link') final String? link,
      @JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'icon') final String? icon,
      @JsonKey(name: 'rate') final String? rate,
      @JsonKey(name: 'sum') final String? sum,
      @JsonKey(name: 'term') final String? term,
      @JsonKey(name: 'rating') final String? rating}) = _$RejectedByRegionImpl;

  factory _RejectedByRegion.fromJson(Map<String, dynamic> json) =
      _$RejectedByRegionImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'icon')
  String? get icon;
  @override
  @JsonKey(name: 'rate')
  String? get rate;
  @override
  @JsonKey(name: 'sum')
  String? get sum;
  @override
  @JsonKey(name: 'term')
  String? get term;
  @override
  @JsonKey(name: 'rating')
  String? get rating;
  @override
  @JsonKey(ignore: true)
  _$$RejectedByRegionImplCopyWith<_$RejectedByRegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Adversite _$AdversiteFromJson(Map<String, dynamic> json) {
  return _Adversite.fromJson(json);
}

/// @nodoc
mixin _$Adversite {
  @JsonKey(name: 'ID')
  int? get ID => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'filename')
  String? get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'filesize')
  int? get filesize => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'alt')
  String? get alt => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'caption')
  String? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploaded_to')
  int? get uploadedTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified')
  String? get modified => throw _privateConstructorUsedError;
  @JsonKey(name: 'menu_order')
  int? get menuOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'mime_type')
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtype')
  String? get subtype => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdversiteCopyWith<Adversite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdversiteCopyWith<$Res> {
  factory $AdversiteCopyWith(Adversite value, $Res Function(Adversite) then) =
      _$AdversiteCopyWithImpl<$Res, Adversite>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? ID,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'filename') String? filename,
      @JsonKey(name: 'filesize') int? filesize,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'alt') String? alt,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'uploaded_to') int? uploadedTo,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'modified') String? modified,
      @JsonKey(name: 'menu_order') int? menuOrder,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'subtype') String? subtype,
      @JsonKey(name: 'icon') String? icon});
}

/// @nodoc
class _$AdversiteCopyWithImpl<$Res, $Val extends Adversite>
    implements $AdversiteCopyWith<$Res> {
  _$AdversiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? filename = freezed,
    Object? filesize = freezed,
    Object? url = freezed,
    Object? link = freezed,
    Object? alt = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? caption = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? uploadedTo = freezed,
    Object? date = freezed,
    Object? modified = freezed,
    Object? menuOrder = freezed,
    Object? mimeType = freezed,
    Object? type = freezed,
    Object? subtype = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      ID: freezed == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      filesize: freezed == filesize
          ? _value.filesize
          : filesize // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedTo: freezed == uploadedTo
          ? _value.uploadedTo
          : uploadedTo // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      menuOrder: freezed == menuOrder
          ? _value.menuOrder
          : menuOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subtype: freezed == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdversiteImplCopyWith<$Res>
    implements $AdversiteCopyWith<$Res> {
  factory _$$AdversiteImplCopyWith(
          _$AdversiteImpl value, $Res Function(_$AdversiteImpl) then) =
      __$$AdversiteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? ID,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'filename') String? filename,
      @JsonKey(name: 'filesize') int? filesize,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'alt') String? alt,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'uploaded_to') int? uploadedTo,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'modified') String? modified,
      @JsonKey(name: 'menu_order') int? menuOrder,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'subtype') String? subtype,
      @JsonKey(name: 'icon') String? icon});
}

/// @nodoc
class __$$AdversiteImplCopyWithImpl<$Res>
    extends _$AdversiteCopyWithImpl<$Res, _$AdversiteImpl>
    implements _$$AdversiteImplCopyWith<$Res> {
  __$$AdversiteImplCopyWithImpl(
      _$AdversiteImpl _value, $Res Function(_$AdversiteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? filename = freezed,
    Object? filesize = freezed,
    Object? url = freezed,
    Object? link = freezed,
    Object? alt = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? caption = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? uploadedTo = freezed,
    Object? date = freezed,
    Object? modified = freezed,
    Object? menuOrder = freezed,
    Object? mimeType = freezed,
    Object? type = freezed,
    Object? subtype = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$AdversiteImpl(
      ID: freezed == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      filesize: freezed == filesize
          ? _value.filesize
          : filesize // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedTo: freezed == uploadedTo
          ? _value.uploadedTo
          : uploadedTo // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      menuOrder: freezed == menuOrder
          ? _value.menuOrder
          : menuOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subtype: freezed == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdversiteImpl implements _Adversite {
  const _$AdversiteImpl(
      {@JsonKey(name: 'ID') this.ID,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'filename') this.filename,
      @JsonKey(name: 'filesize') this.filesize,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'alt') this.alt,
      @JsonKey(name: 'author') this.author,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'uploaded_to') this.uploadedTo,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'modified') this.modified,
      @JsonKey(name: 'menu_order') this.menuOrder,
      @JsonKey(name: 'mime_type') this.mimeType,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'subtype') this.subtype,
      @JsonKey(name: 'icon') this.icon});

  factory _$AdversiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdversiteImplFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? ID;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'filename')
  final String? filename;
  @override
  @JsonKey(name: 'filesize')
  final int? filesize;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'alt')
  final String? alt;
  @override
  @JsonKey(name: 'author')
  final String? author;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'caption')
  final String? caption;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'uploaded_to')
  final int? uploadedTo;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'modified')
  final String? modified;
  @override
  @JsonKey(name: 'menu_order')
  final int? menuOrder;
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'subtype')
  final String? subtype;
  @override
  @JsonKey(name: 'icon')
  final String? icon;

  @override
  String toString() {
    return 'Adversite(ID: $ID, id: $id, title: $title, filename: $filename, filesize: $filesize, url: $url, link: $link, alt: $alt, author: $author, description: $description, caption: $caption, name: $name, status: $status, uploadedTo: $uploadedTo, date: $date, modified: $modified, menuOrder: $menuOrder, mimeType: $mimeType, type: $type, subtype: $subtype, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdversiteImpl &&
            (identical(other.ID, ID) || other.ID == ID) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.filesize, filesize) ||
                other.filesize == filesize) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.alt, alt) || other.alt == alt) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uploadedTo, uploadedTo) ||
                other.uploadedTo == uploadedTo) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.menuOrder, menuOrder) ||
                other.menuOrder == menuOrder) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subtype, subtype) || other.subtype == subtype) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        ID,
        id,
        title,
        filename,
        filesize,
        url,
        link,
        alt,
        author,
        description,
        caption,
        name,
        status,
        uploadedTo,
        date,
        modified,
        menuOrder,
        mimeType,
        type,
        subtype,
        icon
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdversiteImplCopyWith<_$AdversiteImpl> get copyWith =>
      __$$AdversiteImplCopyWithImpl<_$AdversiteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdversiteImplToJson(
      this,
    );
  }
}

abstract class _Adversite implements Adversite {
  const factory _Adversite(
      {@JsonKey(name: 'ID') final int? ID,
      @JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'filename') final String? filename,
      @JsonKey(name: 'filesize') final int? filesize,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'link') final String? link,
      @JsonKey(name: 'alt') final String? alt,
      @JsonKey(name: 'author') final String? author,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'caption') final String? caption,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'uploaded_to') final int? uploadedTo,
      @JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'modified') final String? modified,
      @JsonKey(name: 'menu_order') final int? menuOrder,
      @JsonKey(name: 'mime_type') final String? mimeType,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'subtype') final String? subtype,
      @JsonKey(name: 'icon') final String? icon}) = _$AdversiteImpl;

  factory _Adversite.fromJson(Map<String, dynamic> json) =
      _$AdversiteImpl.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get ID;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'filename')
  String? get filename;
  @override
  @JsonKey(name: 'filesize')
  int? get filesize;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'alt')
  String? get alt;
  @override
  @JsonKey(name: 'author')
  String? get author;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'caption')
  String? get caption;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'uploaded_to')
  int? get uploadedTo;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'modified')
  String? get modified;
  @override
  @JsonKey(name: 'menu_order')
  int? get menuOrder;
  @override
  @JsonKey(name: 'mime_type')
  String? get mimeType;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'subtype')
  String? get subtype;
  @override
  @JsonKey(name: 'icon')
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$AdversiteImplCopyWith<_$AdversiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeaderMenu _$HeaderMenuFromJson(Map<String, dynamic> json) {
  return _HeaderMenu.fromJson(json);
}

/// @nodoc
mixin _$HeaderMenu {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<Items>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeaderMenuCopyWith<HeaderMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderMenuCopyWith<$Res> {
  factory $HeaderMenuCopyWith(
          HeaderMenu value, $Res Function(HeaderMenu) then) =
      _$HeaderMenuCopyWithImpl<$Res, HeaderMenu>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'items') List<Items>? items});
}

/// @nodoc
class _$HeaderMenuCopyWithImpl<$Res, $Val extends HeaderMenu>
    implements $HeaderMenuCopyWith<$Res> {
  _$HeaderMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeaderMenuImplCopyWith<$Res>
    implements $HeaderMenuCopyWith<$Res> {
  factory _$$HeaderMenuImplCopyWith(
          _$HeaderMenuImpl value, $Res Function(_$HeaderMenuImpl) then) =
      __$$HeaderMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'items') List<Items>? items});
}

/// @nodoc
class __$$HeaderMenuImplCopyWithImpl<$Res>
    extends _$HeaderMenuCopyWithImpl<$Res, _$HeaderMenuImpl>
    implements _$$HeaderMenuImplCopyWith<$Res> {
  __$$HeaderMenuImplCopyWithImpl(
      _$HeaderMenuImpl _value, $Res Function(_$HeaderMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? items = freezed,
  }) {
    return _then(_$HeaderMenuImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeaderMenuImpl implements _HeaderMenu {
  const _$HeaderMenuImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'items') final List<Items>? items})
      : _items = items;

  factory _$HeaderMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeaderMenuImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'url')
  final String? url;
  final List<Items>? _items;
  @override
  @JsonKey(name: 'items')
  List<Items>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HeaderMenu(id: $id, title: $title, url: $url, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeaderMenuImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, url, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeaderMenuImplCopyWith<_$HeaderMenuImpl> get copyWith =>
      __$$HeaderMenuImplCopyWithImpl<_$HeaderMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeaderMenuImplToJson(
      this,
    );
  }
}

abstract class _HeaderMenu implements HeaderMenu {
  const factory _HeaderMenu(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'items') final List<Items>? items}) = _$HeaderMenuImpl;

  factory _HeaderMenu.fromJson(Map<String, dynamic> json) =
      _$HeaderMenuImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'items')
  List<Items>? get items;
  @override
  @JsonKey(ignore: true)
  _$$HeaderMenuImplCopyWith<_$HeaderMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemsImplCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$ItemsImplCopyWith(
          _$ItemsImpl value, $Res Function(_$ItemsImpl) then) =
      __$$ItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$ItemsImplCopyWithImpl<$Res>
    extends _$ItemsCopyWithImpl<$Res, _$ItemsImpl>
    implements _$$ItemsImplCopyWith<$Res> {
  __$$ItemsImplCopyWithImpl(
      _$ItemsImpl _value, $Res Function(_$ItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$ItemsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsImpl implements _Items {
  const _$ItemsImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'url') this.url});

  factory _$ItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'Items(id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith =>
      __$$ItemsImplCopyWithImpl<_$ItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsImplToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'url') final String? url}) = _$ItemsImpl;

  factory _Items.fromJson(Map<String, dynamic> json) = _$ItemsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MobileMenu _$MobileMenuFromJson(Map<String, dynamic> json) {
  return _MobileMenu.fromJson(json);
}

/// @nodoc
mixin _$MobileMenu {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileMenuCopyWith<MobileMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileMenuCopyWith<$Res> {
  factory $MobileMenuCopyWith(
          MobileMenu value, $Res Function(MobileMenu) then) =
      _$MobileMenuCopyWithImpl<$Res, MobileMenu>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$MobileMenuCopyWithImpl<$Res, $Val extends MobileMenu>
    implements $MobileMenuCopyWith<$Res> {
  _$MobileMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobileMenuImplCopyWith<$Res>
    implements $MobileMenuCopyWith<$Res> {
  factory _$$MobileMenuImplCopyWith(
          _$MobileMenuImpl value, $Res Function(_$MobileMenuImpl) then) =
      __$$MobileMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$MobileMenuImplCopyWithImpl<$Res>
    extends _$MobileMenuCopyWithImpl<$Res, _$MobileMenuImpl>
    implements _$$MobileMenuImplCopyWith<$Res> {
  __$$MobileMenuImplCopyWithImpl(
      _$MobileMenuImpl _value, $Res Function(_$MobileMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$MobileMenuImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileMenuImpl implements _MobileMenu {
  const _$MobileMenuImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'url') this.url});

  factory _$MobileMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileMenuImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'MobileMenu(id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileMenuImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileMenuImplCopyWith<_$MobileMenuImpl> get copyWith =>
      __$$MobileMenuImplCopyWithImpl<_$MobileMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileMenuImplToJson(
      this,
    );
  }
}

abstract class _MobileMenu implements MobileMenu {
  const factory _MobileMenu(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'url') final String? url}) = _$MobileMenuImpl;

  factory _MobileMenu.fromJson(Map<String, dynamic> json) =
      _$MobileMenuImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$MobileMenuImplCopyWith<_$MobileMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FooterMenu _$FooterMenuFromJson(Map<String, dynamic> json) {
  return _FooterMenu.fromJson(json);
}

/// @nodoc
mixin _$FooterMenu {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FooterMenuCopyWith<FooterMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooterMenuCopyWith<$Res> {
  factory $FooterMenuCopyWith(
          FooterMenu value, $Res Function(FooterMenu) then) =
      _$FooterMenuCopyWithImpl<$Res, FooterMenu>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$FooterMenuCopyWithImpl<$Res, $Val extends FooterMenu>
    implements $FooterMenuCopyWith<$Res> {
  _$FooterMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FooterMenuImplCopyWith<$Res>
    implements $FooterMenuCopyWith<$Res> {
  factory _$$FooterMenuImplCopyWith(
          _$FooterMenuImpl value, $Res Function(_$FooterMenuImpl) then) =
      __$$FooterMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$FooterMenuImplCopyWithImpl<$Res>
    extends _$FooterMenuCopyWithImpl<$Res, _$FooterMenuImpl>
    implements _$$FooterMenuImplCopyWith<$Res> {
  __$$FooterMenuImplCopyWithImpl(
      _$FooterMenuImpl _value, $Res Function(_$FooterMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$FooterMenuImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FooterMenuImpl implements _FooterMenu {
  const _$FooterMenuImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'url') this.url});

  factory _$FooterMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$FooterMenuImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'FooterMenu(id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FooterMenuImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FooterMenuImplCopyWith<_$FooterMenuImpl> get copyWith =>
      __$$FooterMenuImplCopyWithImpl<_$FooterMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FooterMenuImplToJson(
      this,
    );
  }
}

abstract class _FooterMenu implements FooterMenu {
  const factory _FooterMenu(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'url') final String? url}) = _$FooterMenuImpl;

  factory _FooterMenu.fromJson(Map<String, dynamic> json) =
      _$FooterMenuImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$FooterMenuImplCopyWith<_$FooterMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FooterMenu2 _$FooterMenu2FromJson(Map<String, dynamic> json) {
  return _FooterMenu2.fromJson(json);
}

/// @nodoc
mixin _$FooterMenu2 {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FooterMenu2CopyWith<FooterMenu2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooterMenu2CopyWith<$Res> {
  factory $FooterMenu2CopyWith(
          FooterMenu2 value, $Res Function(FooterMenu2) then) =
      _$FooterMenu2CopyWithImpl<$Res, FooterMenu2>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$FooterMenu2CopyWithImpl<$Res, $Val extends FooterMenu2>
    implements $FooterMenu2CopyWith<$Res> {
  _$FooterMenu2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FooterMenu2ImplCopyWith<$Res>
    implements $FooterMenu2CopyWith<$Res> {
  factory _$$FooterMenu2ImplCopyWith(
          _$FooterMenu2Impl value, $Res Function(_$FooterMenu2Impl) then) =
      __$$FooterMenu2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$FooterMenu2ImplCopyWithImpl<$Res>
    extends _$FooterMenu2CopyWithImpl<$Res, _$FooterMenu2Impl>
    implements _$$FooterMenu2ImplCopyWith<$Res> {
  __$$FooterMenu2ImplCopyWithImpl(
      _$FooterMenu2Impl _value, $Res Function(_$FooterMenu2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$FooterMenu2Impl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FooterMenu2Impl implements _FooterMenu2 {
  const _$FooterMenu2Impl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'url') this.url});

  factory _$FooterMenu2Impl.fromJson(Map<String, dynamic> json) =>
      _$$FooterMenu2ImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'FooterMenu2(id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FooterMenu2Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FooterMenu2ImplCopyWith<_$FooterMenu2Impl> get copyWith =>
      __$$FooterMenu2ImplCopyWithImpl<_$FooterMenu2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FooterMenu2ImplToJson(
      this,
    );
  }
}

abstract class _FooterMenu2 implements FooterMenu2 {
  const factory _FooterMenu2(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'url') final String? url}) = _$FooterMenu2Impl;

  factory _FooterMenu2.fromJson(Map<String, dynamic> json) =
      _$FooterMenu2Impl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$FooterMenu2ImplCopyWith<_$FooterMenu2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
