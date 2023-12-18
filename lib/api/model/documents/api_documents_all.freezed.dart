// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_documents_all.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiDocumentsAll _$ApiDocumentsAllFromJson(Map<String, dynamic> json) {
  return _ApiDocumentsAll.fromJson(json);
}

/// @nodoc
mixin _$ApiDocumentsAll {
  @JsonKey(name: 'user')
  List<ApiDocUser> get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'loan', fromJson: _converToApiDocLoanFromJson)
  ApiDocLoan? get loan => throw _privateConstructorUsedError;
  @JsonKey(name: 'history', fromJson: _convertToMapStringApiHistoryItemFromJson)
  Map<String, ApiHistoryItem>? get history =>
      throw _privateConstructorUsedError; //
  @JsonKey(name: 'agreements', fromJson: _converToApiAgreementsFromJson)
  ApiAgreements? get agreements => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'insurance_contracts',
      fromJson: _convertToMapStringListOfApiInsuranceContracts)
  Map<String, List<ApiInsuranceContracts>>? get insuranceContracts =>
      throw _privateConstructorUsedError; //
  @JsonKey(name: 'reference', fromJson: _converToApiReferenceFromJson)
  ApiReference? get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiDocumentsAllCopyWith<ApiDocumentsAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDocumentsAllCopyWith<$Res> {
  factory $ApiDocumentsAllCopyWith(
          ApiDocumentsAll value, $Res Function(ApiDocumentsAll) then) =
      _$ApiDocumentsAllCopyWithImpl<$Res, ApiDocumentsAll>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') List<ApiDocUser> user,
      @JsonKey(name: 'loan', fromJson: _converToApiDocLoanFromJson)
      ApiDocLoan? loan,
      @JsonKey(
          name: 'history', fromJson: _convertToMapStringApiHistoryItemFromJson)
      Map<String, ApiHistoryItem>? history,
      @JsonKey(name: 'agreements', fromJson: _converToApiAgreementsFromJson)
      ApiAgreements? agreements,
      @JsonKey(
          name: 'insurance_contracts',
          fromJson: _convertToMapStringListOfApiInsuranceContracts)
      Map<String, List<ApiInsuranceContracts>>? insuranceContracts,
      @JsonKey(name: 'reference', fromJson: _converToApiReferenceFromJson)
      ApiReference? reference});

  $ApiDocLoanCopyWith<$Res>? get loan;
  $ApiAgreementsCopyWith<$Res>? get agreements;
  $ApiReferenceCopyWith<$Res>? get reference;
}

/// @nodoc
class _$ApiDocumentsAllCopyWithImpl<$Res, $Val extends ApiDocumentsAll>
    implements $ApiDocumentsAllCopyWith<$Res> {
  _$ApiDocumentsAllCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? loan = freezed,
    Object? history = freezed,
    Object? agreements = freezed,
    Object? insuranceContracts = freezed,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<ApiDocUser>,
      loan: freezed == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as ApiDocLoan?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as Map<String, ApiHistoryItem>?,
      agreements: freezed == agreements
          ? _value.agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as ApiAgreements?,
      insuranceContracts: freezed == insuranceContracts
          ? _value.insuranceContracts
          : insuranceContracts // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ApiInsuranceContracts>>?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as ApiReference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiDocLoanCopyWith<$Res>? get loan {
    if (_value.loan == null) {
      return null;
    }

    return $ApiDocLoanCopyWith<$Res>(_value.loan!, (value) {
      return _then(_value.copyWith(loan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementsCopyWith<$Res>? get agreements {
    if (_value.agreements == null) {
      return null;
    }

    return $ApiAgreementsCopyWith<$Res>(_value.agreements!, (value) {
      return _then(_value.copyWith(agreements: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiReferenceCopyWith<$Res>? get reference {
    if (_value.reference == null) {
      return null;
    }

    return $ApiReferenceCopyWith<$Res>(_value.reference!, (value) {
      return _then(_value.copyWith(reference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiDocumentsAllImplCopyWith<$Res>
    implements $ApiDocumentsAllCopyWith<$Res> {
  factory _$$ApiDocumentsAllImplCopyWith(_$ApiDocumentsAllImpl value,
          $Res Function(_$ApiDocumentsAllImpl) then) =
      __$$ApiDocumentsAllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') List<ApiDocUser> user,
      @JsonKey(name: 'loan', fromJson: _converToApiDocLoanFromJson)
      ApiDocLoan? loan,
      @JsonKey(
          name: 'history', fromJson: _convertToMapStringApiHistoryItemFromJson)
      Map<String, ApiHistoryItem>? history,
      @JsonKey(name: 'agreements', fromJson: _converToApiAgreementsFromJson)
      ApiAgreements? agreements,
      @JsonKey(
          name: 'insurance_contracts',
          fromJson: _convertToMapStringListOfApiInsuranceContracts)
      Map<String, List<ApiInsuranceContracts>>? insuranceContracts,
      @JsonKey(name: 'reference', fromJson: _converToApiReferenceFromJson)
      ApiReference? reference});

  @override
  $ApiDocLoanCopyWith<$Res>? get loan;
  @override
  $ApiAgreementsCopyWith<$Res>? get agreements;
  @override
  $ApiReferenceCopyWith<$Res>? get reference;
}

/// @nodoc
class __$$ApiDocumentsAllImplCopyWithImpl<$Res>
    extends _$ApiDocumentsAllCopyWithImpl<$Res, _$ApiDocumentsAllImpl>
    implements _$$ApiDocumentsAllImplCopyWith<$Res> {
  __$$ApiDocumentsAllImplCopyWithImpl(
      _$ApiDocumentsAllImpl _value, $Res Function(_$ApiDocumentsAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? loan = freezed,
    Object? history = freezed,
    Object? agreements = freezed,
    Object? insuranceContracts = freezed,
    Object? reference = freezed,
  }) {
    return _then(_$ApiDocumentsAllImpl(
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<ApiDocUser>,
      loan: freezed == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as ApiDocLoan?,
      history: freezed == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as Map<String, ApiHistoryItem>?,
      agreements: freezed == agreements
          ? _value.agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as ApiAgreements?,
      insuranceContracts: freezed == insuranceContracts
          ? _value._insuranceContracts
          : insuranceContracts // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ApiInsuranceContracts>>?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as ApiReference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiDocumentsAllImpl implements _ApiDocumentsAll {
  const _$ApiDocumentsAllImpl(
      {@JsonKey(name: 'user') final List<ApiDocUser> user = const [],
      @JsonKey(name: 'loan', fromJson: _converToApiDocLoanFromJson) this.loan,
      @JsonKey(
          name: 'history', fromJson: _convertToMapStringApiHistoryItemFromJson)
      final Map<String, ApiHistoryItem>? history,
      @JsonKey(name: 'agreements', fromJson: _converToApiAgreementsFromJson)
      this.agreements,
      @JsonKey(
          name: 'insurance_contracts',
          fromJson: _convertToMapStringListOfApiInsuranceContracts)
      final Map<String, List<ApiInsuranceContracts>>? insuranceContracts,
      @JsonKey(name: 'reference', fromJson: _converToApiReferenceFromJson)
      this.reference})
      : _user = user,
        _history = history,
        _insuranceContracts = insuranceContracts;

  factory _$ApiDocumentsAllImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiDocumentsAllImplFromJson(json);

  final List<ApiDocUser> _user;
  @override
  @JsonKey(name: 'user')
  List<ApiDocUser> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  @JsonKey(name: 'loan', fromJson: _converToApiDocLoanFromJson)
  final ApiDocLoan? loan;
  final Map<String, ApiHistoryItem>? _history;
  @override
  @JsonKey(name: 'history', fromJson: _convertToMapStringApiHistoryItemFromJson)
  Map<String, ApiHistoryItem>? get history {
    final value = _history;
    if (value == null) return null;
    if (_history is EqualUnmodifiableMapView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

//
  @override
  @JsonKey(name: 'agreements', fromJson: _converToApiAgreementsFromJson)
  final ApiAgreements? agreements;
  final Map<String, List<ApiInsuranceContracts>>? _insuranceContracts;
  @override
  @JsonKey(
      name: 'insurance_contracts',
      fromJson: _convertToMapStringListOfApiInsuranceContracts)
  Map<String, List<ApiInsuranceContracts>>? get insuranceContracts {
    final value = _insuranceContracts;
    if (value == null) return null;
    if (_insuranceContracts is EqualUnmodifiableMapView)
      return _insuranceContracts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

//
  @override
  @JsonKey(name: 'reference', fromJson: _converToApiReferenceFromJson)
  final ApiReference? reference;

  @override
  String toString() {
    return 'ApiDocumentsAll(user: $user, loan: $loan, history: $history, agreements: $agreements, insuranceContracts: $insuranceContracts, reference: $reference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiDocumentsAllImpl &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            (identical(other.loan, loan) || other.loan == loan) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.agreements, agreements) ||
                other.agreements == agreements) &&
            const DeepCollectionEquality()
                .equals(other._insuranceContracts, _insuranceContracts) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_user),
      loan,
      const DeepCollectionEquality().hash(_history),
      agreements,
      const DeepCollectionEquality().hash(_insuranceContracts),
      reference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiDocumentsAllImplCopyWith<_$ApiDocumentsAllImpl> get copyWith =>
      __$$ApiDocumentsAllImplCopyWithImpl<_$ApiDocumentsAllImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiDocumentsAllImplToJson(
      this,
    );
  }
}

abstract class _ApiDocumentsAll implements ApiDocumentsAll {
  const factory _ApiDocumentsAll(
      {@JsonKey(name: 'user') final List<ApiDocUser> user,
      @JsonKey(name: 'loan', fromJson: _converToApiDocLoanFromJson)
      final ApiDocLoan? loan,
      @JsonKey(
          name: 'history', fromJson: _convertToMapStringApiHistoryItemFromJson)
      final Map<String, ApiHistoryItem>? history,
      @JsonKey(name: 'agreements', fromJson: _converToApiAgreementsFromJson)
      final ApiAgreements? agreements,
      @JsonKey(
          name: 'insurance_contracts',
          fromJson: _convertToMapStringListOfApiInsuranceContracts)
      final Map<String, List<ApiInsuranceContracts>>? insuranceContracts,
      @JsonKey(name: 'reference', fromJson: _converToApiReferenceFromJson)
      final ApiReference? reference}) = _$ApiDocumentsAllImpl;

  factory _ApiDocumentsAll.fromJson(Map<String, dynamic> json) =
      _$ApiDocumentsAllImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  List<ApiDocUser> get user;
  @override
  @JsonKey(name: 'loan', fromJson: _converToApiDocLoanFromJson)
  ApiDocLoan? get loan;
  @override
  @JsonKey(name: 'history', fromJson: _convertToMapStringApiHistoryItemFromJson)
  Map<String, ApiHistoryItem>? get history;
  @override //
  @JsonKey(name: 'agreements', fromJson: _converToApiAgreementsFromJson)
  ApiAgreements? get agreements;
  @override
  @JsonKey(
      name: 'insurance_contracts',
      fromJson: _convertToMapStringListOfApiInsuranceContracts)
  Map<String, List<ApiInsuranceContracts>>? get insuranceContracts;
  @override //
  @JsonKey(name: 'reference', fromJson: _converToApiReferenceFromJson)
  ApiReference? get reference;
  @override
  @JsonKey(ignore: true)
  _$$ApiDocumentsAllImplCopyWith<_$ApiDocumentsAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiHistoryItem _$ApiHistoryItemFromJson(Map<String, dynamic> json) {
  return _ApiHistoryItem.fromJson(json);
}

/// @nodoc
mixin _$ApiHistoryItem {
  Map<String, ApiAgreementItem> get agreements =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiHistoryItemCopyWith<ApiHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiHistoryItemCopyWith<$Res> {
  factory $ApiHistoryItemCopyWith(
          ApiHistoryItem value, $Res Function(ApiHistoryItem) then) =
      _$ApiHistoryItemCopyWithImpl<$Res, ApiHistoryItem>;
  @useResult
  $Res call({Map<String, ApiAgreementItem> agreements});
}

/// @nodoc
class _$ApiHistoryItemCopyWithImpl<$Res, $Val extends ApiHistoryItem>
    implements $ApiHistoryItemCopyWith<$Res> {
  _$ApiHistoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreements = null,
  }) {
    return _then(_value.copyWith(
      agreements: null == agreements
          ? _value.agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as Map<String, ApiAgreementItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiHistoryItemImplCopyWith<$Res>
    implements $ApiHistoryItemCopyWith<$Res> {
  factory _$$ApiHistoryItemImplCopyWith(_$ApiHistoryItemImpl value,
          $Res Function(_$ApiHistoryItemImpl) then) =
      __$$ApiHistoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, ApiAgreementItem> agreements});
}

/// @nodoc
class __$$ApiHistoryItemImplCopyWithImpl<$Res>
    extends _$ApiHistoryItemCopyWithImpl<$Res, _$ApiHistoryItemImpl>
    implements _$$ApiHistoryItemImplCopyWith<$Res> {
  __$$ApiHistoryItemImplCopyWithImpl(
      _$ApiHistoryItemImpl _value, $Res Function(_$ApiHistoryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreements = null,
  }) {
    return _then(_$ApiHistoryItemImpl(
      agreements: null == agreements
          ? _value._agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as Map<String, ApiAgreementItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiHistoryItemImpl implements _ApiHistoryItem {
  const _$ApiHistoryItemImpl(
      {required final Map<String, ApiAgreementItem> agreements})
      : _agreements = agreements;

  factory _$ApiHistoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiHistoryItemImplFromJson(json);

  final Map<String, ApiAgreementItem> _agreements;
  @override
  Map<String, ApiAgreementItem> get agreements {
    if (_agreements is EqualUnmodifiableMapView) return _agreements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_agreements);
  }

  @override
  String toString() {
    return 'ApiHistoryItem(agreements: $agreements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiHistoryItemImpl &&
            const DeepCollectionEquality()
                .equals(other._agreements, _agreements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_agreements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiHistoryItemImplCopyWith<_$ApiHistoryItemImpl> get copyWith =>
      __$$ApiHistoryItemImplCopyWithImpl<_$ApiHistoryItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiHistoryItemImplToJson(
      this,
    );
  }
}

abstract class _ApiHistoryItem implements ApiHistoryItem {
  const factory _ApiHistoryItem(
          {required final Map<String, ApiAgreementItem> agreements}) =
      _$ApiHistoryItemImpl;

  factory _ApiHistoryItem.fromJson(Map<String, dynamic> json) =
      _$ApiHistoryItemImpl.fromJson;

  @override
  Map<String, ApiAgreementItem> get agreements;
  @override
  @JsonKey(ignore: true)
  _$$ApiHistoryItemImplCopyWith<_$ApiHistoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiAgreements _$ApiAgreementsFromJson(Map<String, dynamic> json) {
  return _ApiAgreements.fromJson(json);
}

/// @nodoc
mixin _$ApiAgreements {
  @JsonKey(name: 'agreementProcessingPersonalData')
  ApiAgreementItem? get agreementProcessingPersonalData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCreditReport')
  ApiAgreementItem? get agreementCreditReport =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementUseSimpleElectronicSign')
  ApiAgreementItem? get agreementUseSimpleElectronicSign =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementService')
  ApiAgreementItem? get agreementService => throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementServiceIL')
  ApiAgreementItem? get agreementServiceIL =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementContractIL')
  ApiAgreementItem? get agreementContractIL =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentScheduleILForPER')
  ApiAgreementItem? get paymentScheduleILForPER =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCollectiveInsuranceKid-0')
  ApiAgreementItem? get agreementCollectiveInsuranceKid0 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCollectiveInsuranceCertificate-0')
  ApiAgreementItem? get agreementCollectiveInsuranceCertificate0 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCollectiveInsurance-0')
  ApiAgreementItem? get agreementCollectiveInsurance0 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementCollectiveInsuranceStatement-0')
  ApiAgreementItem? get agreementCollectiveInsuranceStatement0 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementConsentAutocharge')
  ApiAgreementItem? get agreementConsentAutocharge =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementContractLongPeriod')
  ApiAgreementItem? get agreementContractLongPeriod =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementAd')
  ApiAgreementItem? get agreementNotificationOfOverdueDebt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementNotificationOfOverdueDebt')
  ApiAgreementItem? get agreementAd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiAgreementsCopyWith<ApiAgreements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAgreementsCopyWith<$Res> {
  factory $ApiAgreementsCopyWith(
          ApiAgreements value, $Res Function(ApiAgreements) then) =
      _$ApiAgreementsCopyWithImpl<$Res, ApiAgreements>;
  @useResult
  $Res call(
      {@JsonKey(name: 'agreementProcessingPersonalData')
      ApiAgreementItem? agreementProcessingPersonalData,
      @JsonKey(name: 'agreementCreditReport')
      ApiAgreementItem? agreementCreditReport,
      @JsonKey(name: 'agreementUseSimpleElectronicSign')
      ApiAgreementItem? agreementUseSimpleElectronicSign,
      @JsonKey(name: 'agreementService') ApiAgreementItem? agreementService,
      @JsonKey(name: 'agreementServiceIL') ApiAgreementItem? agreementServiceIL,
      @JsonKey(name: 'agreementContractIL')
      ApiAgreementItem? agreementContractIL,
      @JsonKey(name: 'paymentScheduleILForPER')
      ApiAgreementItem? paymentScheduleILForPER,
      @JsonKey(name: 'agreementCollectiveInsuranceKid-0')
      ApiAgreementItem? agreementCollectiveInsuranceKid0,
      @JsonKey(name: 'agreementCollectiveInsuranceCertificate-0')
      ApiAgreementItem? agreementCollectiveInsuranceCertificate0,
      @JsonKey(name: 'agreementCollectiveInsurance-0')
      ApiAgreementItem? agreementCollectiveInsurance0,
      @JsonKey(name: 'agreementCollectiveInsuranceStatement-0')
      ApiAgreementItem? agreementCollectiveInsuranceStatement0,
      @JsonKey(name: 'agreementConsentAutocharge')
      ApiAgreementItem? agreementConsentAutocharge,
      @JsonKey(name: 'agreementContractLongPeriod')
      ApiAgreementItem? agreementContractLongPeriod,
      @JsonKey(name: 'agreementAd')
      ApiAgreementItem? agreementNotificationOfOverdueDebt,
      @JsonKey(name: 'agreementNotificationOfOverdueDebt')
      ApiAgreementItem? agreementAd});

  $ApiAgreementItemCopyWith<$Res>? get agreementProcessingPersonalData;
  $ApiAgreementItemCopyWith<$Res>? get agreementCreditReport;
  $ApiAgreementItemCopyWith<$Res>? get agreementUseSimpleElectronicSign;
  $ApiAgreementItemCopyWith<$Res>? get agreementService;
  $ApiAgreementItemCopyWith<$Res>? get agreementServiceIL;
  $ApiAgreementItemCopyWith<$Res>? get agreementContractIL;
  $ApiAgreementItemCopyWith<$Res>? get paymentScheduleILForPER;
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsuranceKid0;
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsuranceCertificate0;
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsurance0;
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsuranceStatement0;
  $ApiAgreementItemCopyWith<$Res>? get agreementConsentAutocharge;
  $ApiAgreementItemCopyWith<$Res>? get agreementContractLongPeriod;
  $ApiAgreementItemCopyWith<$Res>? get agreementNotificationOfOverdueDebt;
  $ApiAgreementItemCopyWith<$Res>? get agreementAd;
}

/// @nodoc
class _$ApiAgreementsCopyWithImpl<$Res, $Val extends ApiAgreements>
    implements $ApiAgreementsCopyWith<$Res> {
  _$ApiAgreementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreementProcessingPersonalData = freezed,
    Object? agreementCreditReport = freezed,
    Object? agreementUseSimpleElectronicSign = freezed,
    Object? agreementService = freezed,
    Object? agreementServiceIL = freezed,
    Object? agreementContractIL = freezed,
    Object? paymentScheduleILForPER = freezed,
    Object? agreementCollectiveInsuranceKid0 = freezed,
    Object? agreementCollectiveInsuranceCertificate0 = freezed,
    Object? agreementCollectiveInsurance0 = freezed,
    Object? agreementCollectiveInsuranceStatement0 = freezed,
    Object? agreementConsentAutocharge = freezed,
    Object? agreementContractLongPeriod = freezed,
    Object? agreementNotificationOfOverdueDebt = freezed,
    Object? agreementAd = freezed,
  }) {
    return _then(_value.copyWith(
      agreementProcessingPersonalData: freezed ==
              agreementProcessingPersonalData
          ? _value.agreementProcessingPersonalData
          : agreementProcessingPersonalData // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementCreditReport: freezed == agreementCreditReport
          ? _value.agreementCreditReport
          : agreementCreditReport // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementUseSimpleElectronicSign: freezed ==
              agreementUseSimpleElectronicSign
          ? _value.agreementUseSimpleElectronicSign
          : agreementUseSimpleElectronicSign // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementService: freezed == agreementService
          ? _value.agreementService
          : agreementService // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementServiceIL: freezed == agreementServiceIL
          ? _value.agreementServiceIL
          : agreementServiceIL // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementContractIL: freezed == agreementContractIL
          ? _value.agreementContractIL
          : agreementContractIL // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      paymentScheduleILForPER: freezed == paymentScheduleILForPER
          ? _value.paymentScheduleILForPER
          : paymentScheduleILForPER // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementCollectiveInsuranceKid0: freezed ==
              agreementCollectiveInsuranceKid0
          ? _value.agreementCollectiveInsuranceKid0
          : agreementCollectiveInsuranceKid0 // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementCollectiveInsuranceCertificate0: freezed ==
              agreementCollectiveInsuranceCertificate0
          ? _value.agreementCollectiveInsuranceCertificate0
          : agreementCollectiveInsuranceCertificate0 // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementCollectiveInsurance0: freezed == agreementCollectiveInsurance0
          ? _value.agreementCollectiveInsurance0
          : agreementCollectiveInsurance0 // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementCollectiveInsuranceStatement0: freezed ==
              agreementCollectiveInsuranceStatement0
          ? _value.agreementCollectiveInsuranceStatement0
          : agreementCollectiveInsuranceStatement0 // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementConsentAutocharge: freezed == agreementConsentAutocharge
          ? _value.agreementConsentAutocharge
          : agreementConsentAutocharge // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementContractLongPeriod: freezed == agreementContractLongPeriod
          ? _value.agreementContractLongPeriod
          : agreementContractLongPeriod // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementNotificationOfOverdueDebt: freezed ==
              agreementNotificationOfOverdueDebt
          ? _value.agreementNotificationOfOverdueDebt
          : agreementNotificationOfOverdueDebt // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementAd: freezed == agreementAd
          ? _value.agreementAd
          : agreementAd // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementProcessingPersonalData {
    if (_value.agreementProcessingPersonalData == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(
        _value.agreementProcessingPersonalData!, (value) {
      return _then(
          _value.copyWith(agreementProcessingPersonalData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementCreditReport {
    if (_value.agreementCreditReport == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(_value.agreementCreditReport!,
        (value) {
      return _then(_value.copyWith(agreementCreditReport: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementUseSimpleElectronicSign {
    if (_value.agreementUseSimpleElectronicSign == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(
        _value.agreementUseSimpleElectronicSign!, (value) {
      return _then(
          _value.copyWith(agreementUseSimpleElectronicSign: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementService {
    if (_value.agreementService == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(_value.agreementService!, (value) {
      return _then(_value.copyWith(agreementService: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementServiceIL {
    if (_value.agreementServiceIL == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(_value.agreementServiceIL!, (value) {
      return _then(_value.copyWith(agreementServiceIL: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementContractIL {
    if (_value.agreementContractIL == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(_value.agreementContractIL!,
        (value) {
      return _then(_value.copyWith(agreementContractIL: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get paymentScheduleILForPER {
    if (_value.paymentScheduleILForPER == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(_value.paymentScheduleILForPER!,
        (value) {
      return _then(_value.copyWith(paymentScheduleILForPER: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsuranceKid0 {
    if (_value.agreementCollectiveInsuranceKid0 == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(
        _value.agreementCollectiveInsuranceKid0!, (value) {
      return _then(
          _value.copyWith(agreementCollectiveInsuranceKid0: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>?
      get agreementCollectiveInsuranceCertificate0 {
    if (_value.agreementCollectiveInsuranceCertificate0 == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(
        _value.agreementCollectiveInsuranceCertificate0!, (value) {
      return _then(_value.copyWith(
          agreementCollectiveInsuranceCertificate0: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsurance0 {
    if (_value.agreementCollectiveInsurance0 == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(
        _value.agreementCollectiveInsurance0!, (value) {
      return _then(
          _value.copyWith(agreementCollectiveInsurance0: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsuranceStatement0 {
    if (_value.agreementCollectiveInsuranceStatement0 == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(
        _value.agreementCollectiveInsuranceStatement0!, (value) {
      return _then(_value.copyWith(
          agreementCollectiveInsuranceStatement0: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementConsentAutocharge {
    if (_value.agreementConsentAutocharge == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(_value.agreementConsentAutocharge!,
        (value) {
      return _then(_value.copyWith(agreementConsentAutocharge: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementContractLongPeriod {
    if (_value.agreementContractLongPeriod == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(_value.agreementContractLongPeriod!,
        (value) {
      return _then(_value.copyWith(agreementContractLongPeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementNotificationOfOverdueDebt {
    if (_value.agreementNotificationOfOverdueDebt == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(
        _value.agreementNotificationOfOverdueDebt!, (value) {
      return _then(
          _value.copyWith(agreementNotificationOfOverdueDebt: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get agreementAd {
    if (_value.agreementAd == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(_value.agreementAd!, (value) {
      return _then(_value.copyWith(agreementAd: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiAgreementsImplCopyWith<$Res>
    implements $ApiAgreementsCopyWith<$Res> {
  factory _$$ApiAgreementsImplCopyWith(
          _$ApiAgreementsImpl value, $Res Function(_$ApiAgreementsImpl) then) =
      __$$ApiAgreementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'agreementProcessingPersonalData')
      ApiAgreementItem? agreementProcessingPersonalData,
      @JsonKey(name: 'agreementCreditReport')
      ApiAgreementItem? agreementCreditReport,
      @JsonKey(name: 'agreementUseSimpleElectronicSign')
      ApiAgreementItem? agreementUseSimpleElectronicSign,
      @JsonKey(name: 'agreementService') ApiAgreementItem? agreementService,
      @JsonKey(name: 'agreementServiceIL') ApiAgreementItem? agreementServiceIL,
      @JsonKey(name: 'agreementContractIL')
      ApiAgreementItem? agreementContractIL,
      @JsonKey(name: 'paymentScheduleILForPER')
      ApiAgreementItem? paymentScheduleILForPER,
      @JsonKey(name: 'agreementCollectiveInsuranceKid-0')
      ApiAgreementItem? agreementCollectiveInsuranceKid0,
      @JsonKey(name: 'agreementCollectiveInsuranceCertificate-0')
      ApiAgreementItem? agreementCollectiveInsuranceCertificate0,
      @JsonKey(name: 'agreementCollectiveInsurance-0')
      ApiAgreementItem? agreementCollectiveInsurance0,
      @JsonKey(name: 'agreementCollectiveInsuranceStatement-0')
      ApiAgreementItem? agreementCollectiveInsuranceStatement0,
      @JsonKey(name: 'agreementConsentAutocharge')
      ApiAgreementItem? agreementConsentAutocharge,
      @JsonKey(name: 'agreementContractLongPeriod')
      ApiAgreementItem? agreementContractLongPeriod,
      @JsonKey(name: 'agreementAd')
      ApiAgreementItem? agreementNotificationOfOverdueDebt,
      @JsonKey(name: 'agreementNotificationOfOverdueDebt')
      ApiAgreementItem? agreementAd});

  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementProcessingPersonalData;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementCreditReport;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementUseSimpleElectronicSign;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementService;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementServiceIL;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementContractIL;
  @override
  $ApiAgreementItemCopyWith<$Res>? get paymentScheduleILForPER;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsuranceKid0;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsuranceCertificate0;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsurance0;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementCollectiveInsuranceStatement0;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementConsentAutocharge;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementContractLongPeriod;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementNotificationOfOverdueDebt;
  @override
  $ApiAgreementItemCopyWith<$Res>? get agreementAd;
}

/// @nodoc
class __$$ApiAgreementsImplCopyWithImpl<$Res>
    extends _$ApiAgreementsCopyWithImpl<$Res, _$ApiAgreementsImpl>
    implements _$$ApiAgreementsImplCopyWith<$Res> {
  __$$ApiAgreementsImplCopyWithImpl(
      _$ApiAgreementsImpl _value, $Res Function(_$ApiAgreementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreementProcessingPersonalData = freezed,
    Object? agreementCreditReport = freezed,
    Object? agreementUseSimpleElectronicSign = freezed,
    Object? agreementService = freezed,
    Object? agreementServiceIL = freezed,
    Object? agreementContractIL = freezed,
    Object? paymentScheduleILForPER = freezed,
    Object? agreementCollectiveInsuranceKid0 = freezed,
    Object? agreementCollectiveInsuranceCertificate0 = freezed,
    Object? agreementCollectiveInsurance0 = freezed,
    Object? agreementCollectiveInsuranceStatement0 = freezed,
    Object? agreementConsentAutocharge = freezed,
    Object? agreementContractLongPeriod = freezed,
    Object? agreementNotificationOfOverdueDebt = freezed,
    Object? agreementAd = freezed,
  }) {
    return _then(_$ApiAgreementsImpl(
      agreementProcessingPersonalData: freezed ==
              agreementProcessingPersonalData
          ? _value.agreementProcessingPersonalData
          : agreementProcessingPersonalData // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementCreditReport: freezed == agreementCreditReport
          ? _value.agreementCreditReport
          : agreementCreditReport // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementUseSimpleElectronicSign: freezed ==
              agreementUseSimpleElectronicSign
          ? _value.agreementUseSimpleElectronicSign
          : agreementUseSimpleElectronicSign // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementService: freezed == agreementService
          ? _value.agreementService
          : agreementService // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementServiceIL: freezed == agreementServiceIL
          ? _value.agreementServiceIL
          : agreementServiceIL // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementContractIL: freezed == agreementContractIL
          ? _value.agreementContractIL
          : agreementContractIL // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      paymentScheduleILForPER: freezed == paymentScheduleILForPER
          ? _value.paymentScheduleILForPER
          : paymentScheduleILForPER // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementCollectiveInsuranceKid0: freezed ==
              agreementCollectiveInsuranceKid0
          ? _value.agreementCollectiveInsuranceKid0
          : agreementCollectiveInsuranceKid0 // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementCollectiveInsuranceCertificate0: freezed ==
              agreementCollectiveInsuranceCertificate0
          ? _value.agreementCollectiveInsuranceCertificate0
          : agreementCollectiveInsuranceCertificate0 // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementCollectiveInsurance0: freezed == agreementCollectiveInsurance0
          ? _value.agreementCollectiveInsurance0
          : agreementCollectiveInsurance0 // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementCollectiveInsuranceStatement0: freezed ==
              agreementCollectiveInsuranceStatement0
          ? _value.agreementCollectiveInsuranceStatement0
          : agreementCollectiveInsuranceStatement0 // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementConsentAutocharge: freezed == agreementConsentAutocharge
          ? _value.agreementConsentAutocharge
          : agreementConsentAutocharge // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementContractLongPeriod: freezed == agreementContractLongPeriod
          ? _value.agreementContractLongPeriod
          : agreementContractLongPeriod // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementNotificationOfOverdueDebt: freezed ==
              agreementNotificationOfOverdueDebt
          ? _value.agreementNotificationOfOverdueDebt
          : agreementNotificationOfOverdueDebt // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      agreementAd: freezed == agreementAd
          ? _value.agreementAd
          : agreementAd // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiAgreementsImpl extends _ApiAgreements {
  const _$ApiAgreementsImpl(
      {@JsonKey(name: 'agreementProcessingPersonalData')
      this.agreementProcessingPersonalData,
      @JsonKey(name: 'agreementCreditReport') this.agreementCreditReport,
      @JsonKey(name: 'agreementUseSimpleElectronicSign')
      this.agreementUseSimpleElectronicSign,
      @JsonKey(name: 'agreementService') this.agreementService,
      @JsonKey(name: 'agreementServiceIL') this.agreementServiceIL,
      @JsonKey(name: 'agreementContractIL') this.agreementContractIL,
      @JsonKey(name: 'paymentScheduleILForPER') this.paymentScheduleILForPER,
      @JsonKey(name: 'agreementCollectiveInsuranceKid-0')
      this.agreementCollectiveInsuranceKid0,
      @JsonKey(name: 'agreementCollectiveInsuranceCertificate-0')
      this.agreementCollectiveInsuranceCertificate0,
      @JsonKey(name: 'agreementCollectiveInsurance-0')
      this.agreementCollectiveInsurance0,
      @JsonKey(name: 'agreementCollectiveInsuranceStatement-0')
      this.agreementCollectiveInsuranceStatement0,
      @JsonKey(name: 'agreementConsentAutocharge')
      this.agreementConsentAutocharge,
      @JsonKey(name: 'agreementContractLongPeriod')
      this.agreementContractLongPeriod,
      @JsonKey(name: 'agreementAd') this.agreementNotificationOfOverdueDebt,
      @JsonKey(name: 'agreementNotificationOfOverdueDebt') this.agreementAd})
      : super._();

  factory _$ApiAgreementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiAgreementsImplFromJson(json);

  @override
  @JsonKey(name: 'agreementProcessingPersonalData')
  final ApiAgreementItem? agreementProcessingPersonalData;
  @override
  @JsonKey(name: 'agreementCreditReport')
  final ApiAgreementItem? agreementCreditReport;
  @override
  @JsonKey(name: 'agreementUseSimpleElectronicSign')
  final ApiAgreementItem? agreementUseSimpleElectronicSign;
  @override
  @JsonKey(name: 'agreementService')
  final ApiAgreementItem? agreementService;
  @override
  @JsonKey(name: 'agreementServiceIL')
  final ApiAgreementItem? agreementServiceIL;
  @override
  @JsonKey(name: 'agreementContractIL')
  final ApiAgreementItem? agreementContractIL;
  @override
  @JsonKey(name: 'paymentScheduleILForPER')
  final ApiAgreementItem? paymentScheduleILForPER;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceKid-0')
  final ApiAgreementItem? agreementCollectiveInsuranceKid0;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceCertificate-0')
  final ApiAgreementItem? agreementCollectiveInsuranceCertificate0;
  @override
  @JsonKey(name: 'agreementCollectiveInsurance-0')
  final ApiAgreementItem? agreementCollectiveInsurance0;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceStatement-0')
  final ApiAgreementItem? agreementCollectiveInsuranceStatement0;
  @override
  @JsonKey(name: 'agreementConsentAutocharge')
  final ApiAgreementItem? agreementConsentAutocharge;
  @override
  @JsonKey(name: 'agreementContractLongPeriod')
  final ApiAgreementItem? agreementContractLongPeriod;
  @override
  @JsonKey(name: 'agreementAd')
  final ApiAgreementItem? agreementNotificationOfOverdueDebt;
  @override
  @JsonKey(name: 'agreementNotificationOfOverdueDebt')
  final ApiAgreementItem? agreementAd;

  @override
  String toString() {
    return 'ApiAgreements(agreementProcessingPersonalData: $agreementProcessingPersonalData, agreementCreditReport: $agreementCreditReport, agreementUseSimpleElectronicSign: $agreementUseSimpleElectronicSign, agreementService: $agreementService, agreementServiceIL: $agreementServiceIL, agreementContractIL: $agreementContractIL, paymentScheduleILForPER: $paymentScheduleILForPER, agreementCollectiveInsuranceKid0: $agreementCollectiveInsuranceKid0, agreementCollectiveInsuranceCertificate0: $agreementCollectiveInsuranceCertificate0, agreementCollectiveInsurance0: $agreementCollectiveInsurance0, agreementCollectiveInsuranceStatement0: $agreementCollectiveInsuranceStatement0, agreementConsentAutocharge: $agreementConsentAutocharge, agreementContractLongPeriod: $agreementContractLongPeriod, agreementNotificationOfOverdueDebt: $agreementNotificationOfOverdueDebt, agreementAd: $agreementAd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiAgreementsImpl &&
            (identical(other.agreementProcessingPersonalData, agreementProcessingPersonalData) ||
                other.agreementProcessingPersonalData ==
                    agreementProcessingPersonalData) &&
            (identical(other.agreementCreditReport, agreementCreditReport) ||
                other.agreementCreditReport == agreementCreditReport) &&
            (identical(other.agreementUseSimpleElectronicSign, agreementUseSimpleElectronicSign) ||
                other.agreementUseSimpleElectronicSign ==
                    agreementUseSimpleElectronicSign) &&
            (identical(other.agreementService, agreementService) ||
                other.agreementService == agreementService) &&
            (identical(other.agreementServiceIL, agreementServiceIL) ||
                other.agreementServiceIL == agreementServiceIL) &&
            (identical(other.agreementContractIL, agreementContractIL) ||
                other.agreementContractIL == agreementContractIL) &&
            (identical(other.paymentScheduleILForPER, paymentScheduleILForPER) ||
                other.paymentScheduleILForPER == paymentScheduleILForPER) &&
            (identical(other.agreementCollectiveInsuranceKid0, agreementCollectiveInsuranceKid0) ||
                other.agreementCollectiveInsuranceKid0 ==
                    agreementCollectiveInsuranceKid0) &&
            (identical(other.agreementCollectiveInsuranceCertificate0,
                    agreementCollectiveInsuranceCertificate0) ||
                other.agreementCollectiveInsuranceCertificate0 ==
                    agreementCollectiveInsuranceCertificate0) &&
            (identical(other.agreementCollectiveInsurance0, agreementCollectiveInsurance0) ||
                other.agreementCollectiveInsurance0 ==
                    agreementCollectiveInsurance0) &&
            (identical(other.agreementCollectiveInsuranceStatement0, agreementCollectiveInsuranceStatement0) ||
                other.agreementCollectiveInsuranceStatement0 ==
                    agreementCollectiveInsuranceStatement0) &&
            (identical(other.agreementConsentAutocharge, agreementConsentAutocharge) ||
                other.agreementConsentAutocharge ==
                    agreementConsentAutocharge) &&
            (identical(other.agreementContractLongPeriod, agreementContractLongPeriod) ||
                other.agreementContractLongPeriod ==
                    agreementContractLongPeriod) &&
            (identical(other.agreementNotificationOfOverdueDebt, agreementNotificationOfOverdueDebt) ||
                other.agreementNotificationOfOverdueDebt == agreementNotificationOfOverdueDebt) &&
            (identical(other.agreementAd, agreementAd) || other.agreementAd == agreementAd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agreementProcessingPersonalData,
      agreementCreditReport,
      agreementUseSimpleElectronicSign,
      agreementService,
      agreementServiceIL,
      agreementContractIL,
      paymentScheduleILForPER,
      agreementCollectiveInsuranceKid0,
      agreementCollectiveInsuranceCertificate0,
      agreementCollectiveInsurance0,
      agreementCollectiveInsuranceStatement0,
      agreementConsentAutocharge,
      agreementContractLongPeriod,
      agreementNotificationOfOverdueDebt,
      agreementAd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiAgreementsImplCopyWith<_$ApiAgreementsImpl> get copyWith =>
      __$$ApiAgreementsImplCopyWithImpl<_$ApiAgreementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiAgreementsImplToJson(
      this,
    );
  }
}

abstract class _ApiAgreements extends ApiAgreements {
  const factory _ApiAgreements(
      {@JsonKey(name: 'agreementProcessingPersonalData')
      final ApiAgreementItem? agreementProcessingPersonalData,
      @JsonKey(name: 'agreementCreditReport')
      final ApiAgreementItem? agreementCreditReport,
      @JsonKey(name: 'agreementUseSimpleElectronicSign')
      final ApiAgreementItem? agreementUseSimpleElectronicSign,
      @JsonKey(name: 'agreementService')
      final ApiAgreementItem? agreementService,
      @JsonKey(name: 'agreementServiceIL')
      final ApiAgreementItem? agreementServiceIL,
      @JsonKey(name: 'agreementContractIL')
      final ApiAgreementItem? agreementContractIL,
      @JsonKey(name: 'paymentScheduleILForPER')
      final ApiAgreementItem? paymentScheduleILForPER,
      @JsonKey(name: 'agreementCollectiveInsuranceKid-0')
      final ApiAgreementItem? agreementCollectiveInsuranceKid0,
      @JsonKey(name: 'agreementCollectiveInsuranceCertificate-0')
      final ApiAgreementItem? agreementCollectiveInsuranceCertificate0,
      @JsonKey(name: 'agreementCollectiveInsurance-0')
      final ApiAgreementItem? agreementCollectiveInsurance0,
      @JsonKey(name: 'agreementCollectiveInsuranceStatement-0')
      final ApiAgreementItem? agreementCollectiveInsuranceStatement0,
      @JsonKey(name: 'agreementConsentAutocharge')
      final ApiAgreementItem? agreementConsentAutocharge,
      @JsonKey(name: 'agreementContractLongPeriod')
      final ApiAgreementItem? agreementContractLongPeriod,
      @JsonKey(name: 'agreementAd')
      final ApiAgreementItem? agreementNotificationOfOverdueDebt,
      @JsonKey(name: 'agreementNotificationOfOverdueDebt')
      final ApiAgreementItem? agreementAd}) = _$ApiAgreementsImpl;
  const _ApiAgreements._() : super._();

  factory _ApiAgreements.fromJson(Map<String, dynamic> json) =
      _$ApiAgreementsImpl.fromJson;

  @override
  @JsonKey(name: 'agreementProcessingPersonalData')
  ApiAgreementItem? get agreementProcessingPersonalData;
  @override
  @JsonKey(name: 'agreementCreditReport')
  ApiAgreementItem? get agreementCreditReport;
  @override
  @JsonKey(name: 'agreementUseSimpleElectronicSign')
  ApiAgreementItem? get agreementUseSimpleElectronicSign;
  @override
  @JsonKey(name: 'agreementService')
  ApiAgreementItem? get agreementService;
  @override
  @JsonKey(name: 'agreementServiceIL')
  ApiAgreementItem? get agreementServiceIL;
  @override
  @JsonKey(name: 'agreementContractIL')
  ApiAgreementItem? get agreementContractIL;
  @override
  @JsonKey(name: 'paymentScheduleILForPER')
  ApiAgreementItem? get paymentScheduleILForPER;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceKid-0')
  ApiAgreementItem? get agreementCollectiveInsuranceKid0;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceCertificate-0')
  ApiAgreementItem? get agreementCollectiveInsuranceCertificate0;
  @override
  @JsonKey(name: 'agreementCollectiveInsurance-0')
  ApiAgreementItem? get agreementCollectiveInsurance0;
  @override
  @JsonKey(name: 'agreementCollectiveInsuranceStatement-0')
  ApiAgreementItem? get agreementCollectiveInsuranceStatement0;
  @override
  @JsonKey(name: 'agreementConsentAutocharge')
  ApiAgreementItem? get agreementConsentAutocharge;
  @override
  @JsonKey(name: 'agreementContractLongPeriod')
  ApiAgreementItem? get agreementContractLongPeriod;
  @override
  @JsonKey(name: 'agreementAd')
  ApiAgreementItem? get agreementNotificationOfOverdueDebt;
  @override
  @JsonKey(name: 'agreementNotificationOfOverdueDebt')
  ApiAgreementItem? get agreementAd;
  @override
  @JsonKey(ignore: true)
  _$$ApiAgreementsImplCopyWith<_$ApiAgreementsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiDocUser _$ApiDocUserFromJson(Map<String, dynamic> json) {
  return _ApiDocUser.fromJson(json);
}

/// @nodoc
mixin _$ApiDocUser {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'createdAt', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'name',
      fromJson: docUserNameDetailsFromJson,
      toJson: docUserNameDetailsToJson)
  DocUserNameDetails? get docUserNameDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'isValid')
  bool get isValid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiDocUserCopyWith<ApiDocUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDocUserCopyWith<$Res> {
  factory $ApiDocUserCopyWith(
          ApiDocUser value, $Res Function(ApiDocUser) then) =
      _$ApiDocUserCopyWithImpl<$Res, ApiDocUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(
          name: 'createdAt', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'url') String url,
      @JsonKey(
          name: 'name',
          fromJson: docUserNameDetailsFromJson,
          toJson: docUserNameDetailsToJson)
      DocUserNameDetails? docUserNameDetails,
      @JsonKey(name: 'isValid') bool isValid});

  $DocUserNameDetailsCopyWith<$Res>? get docUserNameDetails;
}

/// @nodoc
class _$ApiDocUserCopyWithImpl<$Res, $Val extends ApiDocUser>
    implements $ApiDocUserCopyWith<$Res> {
  _$ApiDocUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? comment = null,
    Object? createdAt = freezed,
    Object? size = freezed,
    Object? url = null,
    Object? docUserNameDetails = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      docUserNameDetails: freezed == docUserNameDetails
          ? _value.docUserNameDetails
          : docUserNameDetails // ignore: cast_nullable_to_non_nullable
              as DocUserNameDetails?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocUserNameDetailsCopyWith<$Res>? get docUserNameDetails {
    if (_value.docUserNameDetails == null) {
      return null;
    }

    return $DocUserNameDetailsCopyWith<$Res>(_value.docUserNameDetails!,
        (value) {
      return _then(_value.copyWith(docUserNameDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiDocUserImplCopyWith<$Res>
    implements $ApiDocUserCopyWith<$Res> {
  factory _$$ApiDocUserImplCopyWith(
          _$ApiDocUserImpl value, $Res Function(_$ApiDocUserImpl) then) =
      __$$ApiDocUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(
          name: 'createdAt', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'url') String url,
      @JsonKey(
          name: 'name',
          fromJson: docUserNameDetailsFromJson,
          toJson: docUserNameDetailsToJson)
      DocUserNameDetails? docUserNameDetails,
      @JsonKey(name: 'isValid') bool isValid});

  @override
  $DocUserNameDetailsCopyWith<$Res>? get docUserNameDetails;
}

/// @nodoc
class __$$ApiDocUserImplCopyWithImpl<$Res>
    extends _$ApiDocUserCopyWithImpl<$Res, _$ApiDocUserImpl>
    implements _$$ApiDocUserImplCopyWith<$Res> {
  __$$ApiDocUserImplCopyWithImpl(
      _$ApiDocUserImpl _value, $Res Function(_$ApiDocUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? comment = null,
    Object? createdAt = freezed,
    Object? size = freezed,
    Object? url = null,
    Object? docUserNameDetails = freezed,
    Object? isValid = null,
  }) {
    return _then(_$ApiDocUserImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      docUserNameDetails: freezed == docUserNameDetails
          ? _value.docUserNameDetails
          : docUserNameDetails // ignore: cast_nullable_to_non_nullable
              as DocUserNameDetails?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiDocUserImpl implements _ApiDocUser {
  const _$ApiDocUserImpl(
      {@JsonKey(name: 'type') this.type = '',
      @JsonKey(name: 'comment') this.comment = '',
      @JsonKey(
          name: 'createdAt', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.createdAt,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'url') this.url = '',
      @JsonKey(
          name: 'name',
          fromJson: docUserNameDetailsFromJson,
          toJson: docUserNameDetailsToJson)
      this.docUserNameDetails,
      @JsonKey(name: 'isValid') this.isValid = false});

  factory _$ApiDocUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiDocUserImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'comment')
  final String comment;
  @override
  @JsonKey(
      name: 'createdAt', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'size')
  final int? size;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(
      name: 'name',
      fromJson: docUserNameDetailsFromJson,
      toJson: docUserNameDetailsToJson)
  final DocUserNameDetails? docUserNameDetails;
  @override
  @JsonKey(name: 'isValid')
  final bool isValid;

  @override
  String toString() {
    return 'ApiDocUser(type: $type, comment: $comment, createdAt: $createdAt, size: $size, url: $url, docUserNameDetails: $docUserNameDetails, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiDocUserImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.docUserNameDetails, docUserNameDetails) ||
                other.docUserNameDetails == docUserNameDetails) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, comment, createdAt, size,
      url, docUserNameDetails, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiDocUserImplCopyWith<_$ApiDocUserImpl> get copyWith =>
      __$$ApiDocUserImplCopyWithImpl<_$ApiDocUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiDocUserImplToJson(
      this,
    );
  }
}

abstract class _ApiDocUser implements ApiDocUser {
  const factory _ApiDocUser(
      {@JsonKey(name: 'type') final String type,
      @JsonKey(name: 'comment') final String comment,
      @JsonKey(
          name: 'createdAt', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(name: 'size') final int? size,
      @JsonKey(name: 'url') final String url,
      @JsonKey(
          name: 'name',
          fromJson: docUserNameDetailsFromJson,
          toJson: docUserNameDetailsToJson)
      final DocUserNameDetails? docUserNameDetails,
      @JsonKey(name: 'isValid') final bool isValid}) = _$ApiDocUserImpl;

  factory _ApiDocUser.fromJson(Map<String, dynamic> json) =
      _$ApiDocUserImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'comment')
  String get comment;
  @override
  @JsonKey(
      name: 'createdAt', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(
      name: 'name',
      fromJson: docUserNameDetailsFromJson,
      toJson: docUserNameDetailsToJson)
  DocUserNameDetails? get docUserNameDetails;
  @override
  @JsonKey(name: 'isValid')
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ApiDocUserImplCopyWith<_$ApiDocUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DocUserNameDetails _$DocUserNameDetailsFromJson(Map<String, dynamic> json) {
  return _DocUserNameDetails.fromJson(json);
}

/// @nodoc
mixin _$DocUserNameDetails {
  String get name => throw _privateConstructorUsedError;
  EnumDocUserType? get enumDocUserType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocUserNameDetailsCopyWith<DocUserNameDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocUserNameDetailsCopyWith<$Res> {
  factory $DocUserNameDetailsCopyWith(
          DocUserNameDetails value, $Res Function(DocUserNameDetails) then) =
      _$DocUserNameDetailsCopyWithImpl<$Res, DocUserNameDetails>;
  @useResult
  $Res call({String name, EnumDocUserType? enumDocUserType});
}

/// @nodoc
class _$DocUserNameDetailsCopyWithImpl<$Res, $Val extends DocUserNameDetails>
    implements $DocUserNameDetailsCopyWith<$Res> {
  _$DocUserNameDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? enumDocUserType = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enumDocUserType: freezed == enumDocUserType
          ? _value.enumDocUserType
          : enumDocUserType // ignore: cast_nullable_to_non_nullable
              as EnumDocUserType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocUserNameDetailsImplCopyWith<$Res>
    implements $DocUserNameDetailsCopyWith<$Res> {
  factory _$$DocUserNameDetailsImplCopyWith(_$DocUserNameDetailsImpl value,
          $Res Function(_$DocUserNameDetailsImpl) then) =
      __$$DocUserNameDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, EnumDocUserType? enumDocUserType});
}

/// @nodoc
class __$$DocUserNameDetailsImplCopyWithImpl<$Res>
    extends _$DocUserNameDetailsCopyWithImpl<$Res, _$DocUserNameDetailsImpl>
    implements _$$DocUserNameDetailsImplCopyWith<$Res> {
  __$$DocUserNameDetailsImplCopyWithImpl(_$DocUserNameDetailsImpl _value,
      $Res Function(_$DocUserNameDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? enumDocUserType = freezed,
  }) {
    return _then(_$DocUserNameDetailsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enumDocUserType: freezed == enumDocUserType
          ? _value.enumDocUserType
          : enumDocUserType // ignore: cast_nullable_to_non_nullable
              as EnumDocUserType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocUserNameDetailsImpl implements _DocUserNameDetails {
  const _$DocUserNameDetailsImpl({required this.name, this.enumDocUserType});

  factory _$DocUserNameDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocUserNameDetailsImplFromJson(json);

  @override
  final String name;
  @override
  final EnumDocUserType? enumDocUserType;

  @override
  String toString() {
    return 'DocUserNameDetails(name: $name, enumDocUserType: $enumDocUserType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocUserNameDetailsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enumDocUserType, enumDocUserType) ||
                other.enumDocUserType == enumDocUserType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, enumDocUserType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocUserNameDetailsImplCopyWith<_$DocUserNameDetailsImpl> get copyWith =>
      __$$DocUserNameDetailsImplCopyWithImpl<_$DocUserNameDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocUserNameDetailsImplToJson(
      this,
    );
  }
}

abstract class _DocUserNameDetails implements DocUserNameDetails {
  const factory _DocUserNameDetails(
      {required final String name,
      final EnumDocUserType? enumDocUserType}) = _$DocUserNameDetailsImpl;

  factory _DocUserNameDetails.fromJson(Map<String, dynamic> json) =
      _$DocUserNameDetailsImpl.fromJson;

  @override
  String get name;
  @override
  EnumDocUserType? get enumDocUserType;
  @override
  @JsonKey(ignore: true)
  _$$DocUserNameDetailsImplCopyWith<_$DocUserNameDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiDocLoan _$ApiDocLoanFromJson(Map<String, dynamic> json) {
  return _ApiDocLoan.fromJson(json);
}

/// @nodoc
mixin _$ApiDocLoan {
  @JsonKey(name: 'agreements')
  ApiAgreements? get agreements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiDocLoanCopyWith<ApiDocLoan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDocLoanCopyWith<$Res> {
  factory $ApiDocLoanCopyWith(
          ApiDocLoan value, $Res Function(ApiDocLoan) then) =
      _$ApiDocLoanCopyWithImpl<$Res, ApiDocLoan>;
  @useResult
  $Res call({@JsonKey(name: 'agreements') ApiAgreements? agreements});

  $ApiAgreementsCopyWith<$Res>? get agreements;
}

/// @nodoc
class _$ApiDocLoanCopyWithImpl<$Res, $Val extends ApiDocLoan>
    implements $ApiDocLoanCopyWith<$Res> {
  _$ApiDocLoanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreements = freezed,
  }) {
    return _then(_value.copyWith(
      agreements: freezed == agreements
          ? _value.agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as ApiAgreements?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementsCopyWith<$Res>? get agreements {
    if (_value.agreements == null) {
      return null;
    }

    return $ApiAgreementsCopyWith<$Res>(_value.agreements!, (value) {
      return _then(_value.copyWith(agreements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiDocLoanImplCopyWith<$Res>
    implements $ApiDocLoanCopyWith<$Res> {
  factory _$$ApiDocLoanImplCopyWith(
          _$ApiDocLoanImpl value, $Res Function(_$ApiDocLoanImpl) then) =
      __$$ApiDocLoanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'agreements') ApiAgreements? agreements});

  @override
  $ApiAgreementsCopyWith<$Res>? get agreements;
}

/// @nodoc
class __$$ApiDocLoanImplCopyWithImpl<$Res>
    extends _$ApiDocLoanCopyWithImpl<$Res, _$ApiDocLoanImpl>
    implements _$$ApiDocLoanImplCopyWith<$Res> {
  __$$ApiDocLoanImplCopyWithImpl(
      _$ApiDocLoanImpl _value, $Res Function(_$ApiDocLoanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreements = freezed,
  }) {
    return _then(_$ApiDocLoanImpl(
      agreements: freezed == agreements
          ? _value.agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as ApiAgreements?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiDocLoanImpl implements _ApiDocLoan {
  const _$ApiDocLoanImpl({@JsonKey(name: 'agreements') this.agreements});

  factory _$ApiDocLoanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiDocLoanImplFromJson(json);

  @override
  @JsonKey(name: 'agreements')
  final ApiAgreements? agreements;

  @override
  String toString() {
    return 'ApiDocLoan(agreements: $agreements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiDocLoanImpl &&
            (identical(other.agreements, agreements) ||
                other.agreements == agreements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, agreements);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiDocLoanImplCopyWith<_$ApiDocLoanImpl> get copyWith =>
      __$$ApiDocLoanImplCopyWithImpl<_$ApiDocLoanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiDocLoanImplToJson(
      this,
    );
  }
}

abstract class _ApiDocLoan implements ApiDocLoan {
  const factory _ApiDocLoan(
          {@JsonKey(name: 'agreements') final ApiAgreements? agreements}) =
      _$ApiDocLoanImpl;

  factory _ApiDocLoan.fromJson(Map<String, dynamic> json) =
      _$ApiDocLoanImpl.fromJson;

  @override
  @JsonKey(name: 'agreements')
  ApiAgreements? get agreements;
  @override
  @JsonKey(ignore: true)
  _$$ApiDocLoanImplCopyWith<_$ApiDocLoanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiReference _$ApiReferenceFromJson(Map<String, dynamic> json) {
  return _ApiReference.fromJson(json);
}

/// @nodoc
mixin _$ApiReference {
  @JsonKey(name: 'referenceLoanClosed')
  ApiAgreementItem? get referenceLoanClosed =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'referenceLackOfDebt')
  ApiAgreementItem? get referenceLackOfDebt =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiReferenceCopyWith<ApiReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiReferenceCopyWith<$Res> {
  factory $ApiReferenceCopyWith(
          ApiReference value, $Res Function(ApiReference) then) =
      _$ApiReferenceCopyWithImpl<$Res, ApiReference>;
  @useResult
  $Res call(
      {@JsonKey(name: 'referenceLoanClosed')
      ApiAgreementItem? referenceLoanClosed,
      @JsonKey(name: 'referenceLackOfDebt')
      ApiAgreementItem? referenceLackOfDebt});

  $ApiAgreementItemCopyWith<$Res>? get referenceLoanClosed;
  $ApiAgreementItemCopyWith<$Res>? get referenceLackOfDebt;
}

/// @nodoc
class _$ApiReferenceCopyWithImpl<$Res, $Val extends ApiReference>
    implements $ApiReferenceCopyWith<$Res> {
  _$ApiReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceLoanClosed = freezed,
    Object? referenceLackOfDebt = freezed,
  }) {
    return _then(_value.copyWith(
      referenceLoanClosed: freezed == referenceLoanClosed
          ? _value.referenceLoanClosed
          : referenceLoanClosed // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      referenceLackOfDebt: freezed == referenceLackOfDebt
          ? _value.referenceLackOfDebt
          : referenceLackOfDebt // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get referenceLoanClosed {
    if (_value.referenceLoanClosed == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(_value.referenceLoanClosed!,
        (value) {
      return _then(_value.copyWith(referenceLoanClosed: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementItemCopyWith<$Res>? get referenceLackOfDebt {
    if (_value.referenceLackOfDebt == null) {
      return null;
    }

    return $ApiAgreementItemCopyWith<$Res>(_value.referenceLackOfDebt!,
        (value) {
      return _then(_value.copyWith(referenceLackOfDebt: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiReferenceImplCopyWith<$Res>
    implements $ApiReferenceCopyWith<$Res> {
  factory _$$ApiReferenceImplCopyWith(
          _$ApiReferenceImpl value, $Res Function(_$ApiReferenceImpl) then) =
      __$$ApiReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'referenceLoanClosed')
      ApiAgreementItem? referenceLoanClosed,
      @JsonKey(name: 'referenceLackOfDebt')
      ApiAgreementItem? referenceLackOfDebt});

  @override
  $ApiAgreementItemCopyWith<$Res>? get referenceLoanClosed;
  @override
  $ApiAgreementItemCopyWith<$Res>? get referenceLackOfDebt;
}

/// @nodoc
class __$$ApiReferenceImplCopyWithImpl<$Res>
    extends _$ApiReferenceCopyWithImpl<$Res, _$ApiReferenceImpl>
    implements _$$ApiReferenceImplCopyWith<$Res> {
  __$$ApiReferenceImplCopyWithImpl(
      _$ApiReferenceImpl _value, $Res Function(_$ApiReferenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceLoanClosed = freezed,
    Object? referenceLackOfDebt = freezed,
  }) {
    return _then(_$ApiReferenceImpl(
      referenceLoanClosed: freezed == referenceLoanClosed
          ? _value.referenceLoanClosed
          : referenceLoanClosed // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
      referenceLackOfDebt: freezed == referenceLackOfDebt
          ? _value.referenceLackOfDebt
          : referenceLackOfDebt // ignore: cast_nullable_to_non_nullable
              as ApiAgreementItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiReferenceImpl implements _ApiReference {
  const _$ApiReferenceImpl(
      {@JsonKey(name: 'referenceLoanClosed') this.referenceLoanClosed,
      @JsonKey(name: 'referenceLackOfDebt') this.referenceLackOfDebt});

  factory _$ApiReferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiReferenceImplFromJson(json);

  @override
  @JsonKey(name: 'referenceLoanClosed')
  final ApiAgreementItem? referenceLoanClosed;
  @override
  @JsonKey(name: 'referenceLackOfDebt')
  final ApiAgreementItem? referenceLackOfDebt;

  @override
  String toString() {
    return 'ApiReference(referenceLoanClosed: $referenceLoanClosed, referenceLackOfDebt: $referenceLackOfDebt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiReferenceImpl &&
            (identical(other.referenceLoanClosed, referenceLoanClosed) ||
                other.referenceLoanClosed == referenceLoanClosed) &&
            (identical(other.referenceLackOfDebt, referenceLackOfDebt) ||
                other.referenceLackOfDebt == referenceLackOfDebt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, referenceLoanClosed, referenceLackOfDebt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiReferenceImplCopyWith<_$ApiReferenceImpl> get copyWith =>
      __$$ApiReferenceImplCopyWithImpl<_$ApiReferenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiReferenceImplToJson(
      this,
    );
  }
}

abstract class _ApiReference implements ApiReference {
  const factory _ApiReference(
      {@JsonKey(name: 'referenceLoanClosed')
      final ApiAgreementItem? referenceLoanClosed,
      @JsonKey(name: 'referenceLackOfDebt')
      final ApiAgreementItem? referenceLackOfDebt}) = _$ApiReferenceImpl;

  factory _ApiReference.fromJson(Map<String, dynamic> json) =
      _$ApiReferenceImpl.fromJson;

  @override
  @JsonKey(name: 'referenceLoanClosed')
  ApiAgreementItem? get referenceLoanClosed;
  @override
  @JsonKey(name: 'referenceLackOfDebt')
  ApiAgreementItem? get referenceLackOfDebt;
  @override
  @JsonKey(ignore: true)
  _$$ApiReferenceImplCopyWith<_$ApiReferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiAgreementItem _$ApiAgreementItemFromJson(Map<String, dynamic> json) {
  return _ApiAgreementItem.fromJson(json);
}

/// @nodoc
mixin _$ApiAgreementItem {
  @JsonKey(name: 'topic')
  String get topic => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiAgreementItemCopyWith<ApiAgreementItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAgreementItemCopyWith<$Res> {
  factory $ApiAgreementItemCopyWith(
          ApiAgreementItem value, $Res Function(ApiAgreementItem) then) =
      _$ApiAgreementItemCopyWithImpl<$Res, ApiAgreementItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'topic') String topic,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? date});
}

/// @nodoc
class _$ApiAgreementItemCopyWithImpl<$Res, $Val extends ApiAgreementItem>
    implements $ApiAgreementItemCopyWith<$Res> {
  _$ApiAgreementItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? url = null,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiAgreementItemImplCopyWith<$Res>
    implements $ApiAgreementItemCopyWith<$Res> {
  factory _$$ApiAgreementItemImplCopyWith(_$ApiAgreementItemImpl value,
          $Res Function(_$ApiAgreementItemImpl) then) =
      __$$ApiAgreementItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'topic') String topic,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? date});
}

/// @nodoc
class __$$ApiAgreementItemImplCopyWithImpl<$Res>
    extends _$ApiAgreementItemCopyWithImpl<$Res, _$ApiAgreementItemImpl>
    implements _$$ApiAgreementItemImplCopyWith<$Res> {
  __$$ApiAgreementItemImplCopyWithImpl(_$ApiAgreementItemImpl _value,
      $Res Function(_$ApiAgreementItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? url = null,
    Object? date = freezed,
  }) {
    return _then(_$ApiAgreementItemImpl(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiAgreementItemImpl implements _ApiAgreementItem {
  const _$ApiAgreementItemImpl(
      {@JsonKey(name: 'topic') this.topic = '',
      @JsonKey(name: 'url') this.url = '',
      @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.date});

  factory _$ApiAgreementItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiAgreementItemImplFromJson(json);

  @override
  @JsonKey(name: 'topic')
  final String topic;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? date;

  @override
  String toString() {
    return 'ApiAgreementItem(topic: $topic, url: $url, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiAgreementItemImpl &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, url, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiAgreementItemImplCopyWith<_$ApiAgreementItemImpl> get copyWith =>
      __$$ApiAgreementItemImplCopyWithImpl<_$ApiAgreementItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiAgreementItemImplToJson(
      this,
    );
  }
}

abstract class _ApiAgreementItem implements ApiAgreementItem {
  const factory _ApiAgreementItem(
      {@JsonKey(name: 'topic') final String topic,
      @JsonKey(name: 'url') final String url,
      @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      final DateTime? date}) = _$ApiAgreementItemImpl;

  factory _ApiAgreementItem.fromJson(Map<String, dynamic> json) =
      _$ApiAgreementItemImpl.fromJson;

  @override
  @JsonKey(name: 'topic')
  String get topic;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(name: 'date', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$ApiAgreementItemImplCopyWith<_$ApiAgreementItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiInsuranceContracts _$ApiInsuranceContractsFromJson(
    Map<String, dynamic> json) {
  return _ApiInsuranceContracts.fromJson(json);
}

/// @nodoc
mixin _$ApiInsuranceContracts {
  @JsonKey(name: 'loan')
  int? get loan => throw _privateConstructorUsedError; //
  @JsonKey(name: 'insurance_product_id')
  String get insuranceProductId => throw _privateConstructorUsedError; //
  @JsonKey(name: 'insurance_contract_id')
  String get insuranceContractId => throw _privateConstructorUsedError; //
  @JsonKey(name: 'insurance_contract_number')
  String get insuranceContractNumber => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'insurance_end_date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson)
  DateTime? get insuranceEndDate => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'insurance_start_date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson)
  DateTime? get insuranceStartDate => throw _privateConstructorUsedError; //
  @JsonKey(name: 'insurance_premium')
  int? get insurancePremium => throw _privateConstructorUsedError; //
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiInsuranceContractsCopyWith<ApiInsuranceContracts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiInsuranceContractsCopyWith<$Res> {
  factory $ApiInsuranceContractsCopyWith(ApiInsuranceContracts value,
          $Res Function(ApiInsuranceContracts) then) =
      _$ApiInsuranceContractsCopyWithImpl<$Res, ApiInsuranceContracts>;
  @useResult
  $Res call(
      {@JsonKey(name: 'loan') int? loan,
      @JsonKey(name: 'insurance_product_id') String insuranceProductId,
      @JsonKey(name: 'insurance_contract_id') String insuranceContractId,
      @JsonKey(name: 'insurance_contract_number')
      String insuranceContractNumber,
      @JsonKey(
          name: 'insurance_end_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? insuranceEndDate,
      @JsonKey(
          name: 'insurance_start_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? insuranceStartDate,
      @JsonKey(name: 'insurance_premium') int? insurancePremium,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$ApiInsuranceContractsCopyWithImpl<$Res,
        $Val extends ApiInsuranceContracts>
    implements $ApiInsuranceContractsCopyWith<$Res> {
  _$ApiInsuranceContractsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loan = freezed,
    Object? insuranceProductId = null,
    Object? insuranceContractId = null,
    Object? insuranceContractNumber = null,
    Object? insuranceEndDate = freezed,
    Object? insuranceStartDate = freezed,
    Object? insurancePremium = freezed,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      loan: freezed == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as int?,
      insuranceProductId: null == insuranceProductId
          ? _value.insuranceProductId
          : insuranceProductId // ignore: cast_nullable_to_non_nullable
              as String,
      insuranceContractId: null == insuranceContractId
          ? _value.insuranceContractId
          : insuranceContractId // ignore: cast_nullable_to_non_nullable
              as String,
      insuranceContractNumber: null == insuranceContractNumber
          ? _value.insuranceContractNumber
          : insuranceContractNumber // ignore: cast_nullable_to_non_nullable
              as String,
      insuranceEndDate: freezed == insuranceEndDate
          ? _value.insuranceEndDate
          : insuranceEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      insuranceStartDate: freezed == insuranceStartDate
          ? _value.insuranceStartDate
          : insuranceStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      insurancePremium: freezed == insurancePremium
          ? _value.insurancePremium
          : insurancePremium // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiInsuranceContractsImplCopyWith<$Res>
    implements $ApiInsuranceContractsCopyWith<$Res> {
  factory _$$ApiInsuranceContractsImplCopyWith(
          _$ApiInsuranceContractsImpl value,
          $Res Function(_$ApiInsuranceContractsImpl) then) =
      __$$ApiInsuranceContractsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'loan') int? loan,
      @JsonKey(name: 'insurance_product_id') String insuranceProductId,
      @JsonKey(name: 'insurance_contract_id') String insuranceContractId,
      @JsonKey(name: 'insurance_contract_number')
      String insuranceContractNumber,
      @JsonKey(
          name: 'insurance_end_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? insuranceEndDate,
      @JsonKey(
          name: 'insurance_start_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? insuranceStartDate,
      @JsonKey(name: 'insurance_premium') int? insurancePremium,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$$ApiInsuranceContractsImplCopyWithImpl<$Res>
    extends _$ApiInsuranceContractsCopyWithImpl<$Res,
        _$ApiInsuranceContractsImpl>
    implements _$$ApiInsuranceContractsImplCopyWith<$Res> {
  __$$ApiInsuranceContractsImplCopyWithImpl(_$ApiInsuranceContractsImpl _value,
      $Res Function(_$ApiInsuranceContractsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loan = freezed,
    Object? insuranceProductId = null,
    Object? insuranceContractId = null,
    Object? insuranceContractNumber = null,
    Object? insuranceEndDate = freezed,
    Object? insuranceStartDate = freezed,
    Object? insurancePremium = freezed,
    Object? url = null,
  }) {
    return _then(_$ApiInsuranceContractsImpl(
      loan: freezed == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as int?,
      insuranceProductId: null == insuranceProductId
          ? _value.insuranceProductId
          : insuranceProductId // ignore: cast_nullable_to_non_nullable
              as String,
      insuranceContractId: null == insuranceContractId
          ? _value.insuranceContractId
          : insuranceContractId // ignore: cast_nullable_to_non_nullable
              as String,
      insuranceContractNumber: null == insuranceContractNumber
          ? _value.insuranceContractNumber
          : insuranceContractNumber // ignore: cast_nullable_to_non_nullable
              as String,
      insuranceEndDate: freezed == insuranceEndDate
          ? _value.insuranceEndDate
          : insuranceEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      insuranceStartDate: freezed == insuranceStartDate
          ? _value.insuranceStartDate
          : insuranceStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      insurancePremium: freezed == insurancePremium
          ? _value.insurancePremium
          : insurancePremium // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiInsuranceContractsImpl implements _ApiInsuranceContracts {
  const _$ApiInsuranceContractsImpl(
      {@JsonKey(name: 'loan') this.loan,
      @JsonKey(name: 'insurance_product_id') this.insuranceProductId = '',
      @JsonKey(name: 'insurance_contract_id') this.insuranceContractId = '',
      @JsonKey(name: 'insurance_contract_number')
      this.insuranceContractNumber = '',
      @JsonKey(
          name: 'insurance_end_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      this.insuranceEndDate,
      @JsonKey(
          name: 'insurance_start_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      this.insuranceStartDate,
      @JsonKey(name: 'insurance_premium') this.insurancePremium,
      @JsonKey(name: 'url') this.url = ''});

  factory _$ApiInsuranceContractsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiInsuranceContractsImplFromJson(json);

  @override
  @JsonKey(name: 'loan')
  final int? loan;
//
  @override
  @JsonKey(name: 'insurance_product_id')
  final String insuranceProductId;
//
  @override
  @JsonKey(name: 'insurance_contract_id')
  final String insuranceContractId;
//
  @override
  @JsonKey(name: 'insurance_contract_number')
  final String insuranceContractNumber;
//
  @override
  @JsonKey(
      name: 'insurance_end_date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson)
  final DateTime? insuranceEndDate;
//
  @override
  @JsonKey(
      name: 'insurance_start_date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson)
  final DateTime? insuranceStartDate;
//
  @override
  @JsonKey(name: 'insurance_premium')
  final int? insurancePremium;
//
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'ApiInsuranceContracts(loan: $loan, insuranceProductId: $insuranceProductId, insuranceContractId: $insuranceContractId, insuranceContractNumber: $insuranceContractNumber, insuranceEndDate: $insuranceEndDate, insuranceStartDate: $insuranceStartDate, insurancePremium: $insurancePremium, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiInsuranceContractsImpl &&
            (identical(other.loan, loan) || other.loan == loan) &&
            (identical(other.insuranceProductId, insuranceProductId) ||
                other.insuranceProductId == insuranceProductId) &&
            (identical(other.insuranceContractId, insuranceContractId) ||
                other.insuranceContractId == insuranceContractId) &&
            (identical(
                    other.insuranceContractNumber, insuranceContractNumber) ||
                other.insuranceContractNumber == insuranceContractNumber) &&
            (identical(other.insuranceEndDate, insuranceEndDate) ||
                other.insuranceEndDate == insuranceEndDate) &&
            (identical(other.insuranceStartDate, insuranceStartDate) ||
                other.insuranceStartDate == insuranceStartDate) &&
            (identical(other.insurancePremium, insurancePremium) ||
                other.insurancePremium == insurancePremium) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      loan,
      insuranceProductId,
      insuranceContractId,
      insuranceContractNumber,
      insuranceEndDate,
      insuranceStartDate,
      insurancePremium,
      url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiInsuranceContractsImplCopyWith<_$ApiInsuranceContractsImpl>
      get copyWith => __$$ApiInsuranceContractsImplCopyWithImpl<
          _$ApiInsuranceContractsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiInsuranceContractsImplToJson(
      this,
    );
  }
}

abstract class _ApiInsuranceContracts implements ApiInsuranceContracts {
  const factory _ApiInsuranceContracts(
      {@JsonKey(name: 'loan') final int? loan,
      @JsonKey(name: 'insurance_product_id') final String insuranceProductId,
      @JsonKey(name: 'insurance_contract_id') final String insuranceContractId,
      @JsonKey(name: 'insurance_contract_number')
      final String insuranceContractNumber,
      @JsonKey(
          name: 'insurance_end_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      final DateTime? insuranceEndDate,
      @JsonKey(
          name: 'insurance_start_date',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      final DateTime? insuranceStartDate,
      @JsonKey(name: 'insurance_premium') final int? insurancePremium,
      @JsonKey(name: 'url') final String url}) = _$ApiInsuranceContractsImpl;

  factory _ApiInsuranceContracts.fromJson(Map<String, dynamic> json) =
      _$ApiInsuranceContractsImpl.fromJson;

  @override
  @JsonKey(name: 'loan')
  int? get loan;
  @override //
  @JsonKey(name: 'insurance_product_id')
  String get insuranceProductId;
  @override //
  @JsonKey(name: 'insurance_contract_id')
  String get insuranceContractId;
  @override //
  @JsonKey(name: 'insurance_contract_number')
  String get insuranceContractNumber;
  @override //
  @JsonKey(
      name: 'insurance_end_date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson)
  DateTime? get insuranceEndDate;
  @override //
  @JsonKey(
      name: 'insurance_start_date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson)
  DateTime? get insuranceStartDate;
  @override //
  @JsonKey(name: 'insurance_premium')
  int? get insurancePremium;
  @override //
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ApiInsuranceContractsImplCopyWith<_$ApiInsuranceContractsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
